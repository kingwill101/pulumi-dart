// ignore_for_file: unused_element, unnecessary_cast

class PackagePackageSource {
  /// The name of the Amazon S3 bucket containing the package.
  final String s3BucketName;

  /// Key (file name) of the package.
  final String s3Key;

  PackagePackageSource({
    required this.s3BucketName,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketName'] = s3BucketName;
    map['s3Key'] = s3Key;
    return map;
  }

  factory PackagePackageSource.fromMap(Map<String, dynamic> map) {
    return PackagePackageSource(
      s3BucketName: map['s3BucketName'] as String,
      s3Key: map['s3Key'] as String,
    );
  }
}
