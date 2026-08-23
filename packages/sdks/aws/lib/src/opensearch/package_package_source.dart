// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PackagePackageSource {
  /// The name of the Amazon S3 bucket containing the package.
  final pulumi.Input<String> s3BucketName;
  /// Key (file name) of the package.
  final pulumi.Input<String> s3Key;

  /// Creates a new [PackagePackageSource].
  /// [s3BucketName] The name of the Amazon S3 bucket containing the package.
  /// [s3Key] Key (file name) of the package.
  const PackagePackageSource({
    required this.s3BucketName,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3Key': s3Key,
    };
  }

  factory PackagePackageSource.fromMap(Map<String, dynamic> map) {
    return PackagePackageSource(
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3Key: pulumi.Input.fromValue(map['s3Key'] as String),
    );
  }
}
