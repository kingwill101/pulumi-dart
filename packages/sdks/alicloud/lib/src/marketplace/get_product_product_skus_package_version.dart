// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductProductSkusPackageVersion {
  /// The package name of this product sku package.
  final pulumi.Input<String> packageName;
  /// The package version of this product sku package. Currently, the API products can return package_version, but others can not for ensure.
  final pulumi.Input<String> packageVersion;

  /// Creates a new [GetProductProductSkusPackageVersion].
  /// [packageName] The package name of this product sku package.
  /// [packageVersion] The package version of this product sku package. Currently, the API products can return package_version, but others can not for ensure.
  const GetProductProductSkusPackageVersion({
    required this.packageName,
    required this.packageVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': packageName,
      'packageVersion': packageVersion,
    };
  }

  factory GetProductProductSkusPackageVersion.fromMap(Map<String, dynamic> map) {
    return GetProductProductSkusPackageVersion(
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      packageVersion: pulumi.Input.fromValue(map['packageVersion'] as String),
    );
  }
}

