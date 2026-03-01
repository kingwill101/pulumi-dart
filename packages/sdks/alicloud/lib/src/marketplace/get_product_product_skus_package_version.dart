// ignore_for_file: unused_element, unnecessary_cast


class GetProductProductSkusPackageVersion {
  /// The package name of this product sku package.
  final String packageName;
  /// The package version of this product sku package. Currently, the API products can return package_version, but others can not for ensure.
  final String packageVersion;

  /// Creates a new [GetProductProductSkusPackageVersion].
  /// [packageName] The package name of this product sku package.
  /// [packageVersion] The package version of this product sku package. Currently, the API products can return package_version, but others can not for ensure.
  GetProductProductSkusPackageVersion({
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
      packageName: map['packageName'] as String,
      packageVersion: map['packageVersion'] as String,
    );
  }
}

