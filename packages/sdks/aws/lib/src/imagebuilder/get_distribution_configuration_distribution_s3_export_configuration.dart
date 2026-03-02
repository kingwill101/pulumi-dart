// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionS3ExportConfiguration {
  /// The disk image format of the exported image (`RAW`, `VHD`, or `VMDK`)
  final pulumi.Input<String> diskImageFormat;
  /// The name of the IAM role to use for exporting.
  final pulumi.Input<String> roleName;
  /// The name of the S3 bucket to store the exported image in.
  final pulumi.Input<String> s3Bucket;
  /// The prefix for the exported image.
  final pulumi.Input<String> s3Prefix;

  /// Creates a new [GetDistributionConfigurationDistributionS3ExportConfiguration].
  /// [diskImageFormat] The disk image format of the exported image (`RAW`, `VHD`, or `VMDK`)
  /// [roleName] The name of the IAM role to use for exporting.
  /// [s3Bucket] The name of the S3 bucket to store the exported image in.
  /// [s3Prefix] The prefix for the exported image.
  GetDistributionConfigurationDistributionS3ExportConfiguration({
    required this.diskImageFormat,
    required this.roleName,
    required this.s3Bucket,
    required this.s3Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskImageFormat': diskImageFormat,
      'roleName': roleName,
      's3Bucket': s3Bucket,
      's3Prefix': s3Prefix,
    };
  }

  factory GetDistributionConfigurationDistributionS3ExportConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionS3ExportConfiguration(
      diskImageFormat: (map['diskImageFormat'] as String).input(),
      roleName: (map['roleName'] as String).input(),
      s3Bucket: (map['s3Bucket'] as String).input(),
      s3Prefix: (map['s3Prefix'] as String).input(),
    );
  }
}

