// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "wallet-kit",
    platforms: [
        .macOS(.v10_12)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/vapor/crypto.git", from: "3.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMajor(from: "0.9.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Run", dependencies: ["WalletKit"]),
        .target(
            name: "WalletKit",
            dependencies: ["Crypto", "ZIPFoundation"]),
        .testTarget(
            name: "WalletKitTests",
            dependencies: ["WalletKit"]),
    ]
)