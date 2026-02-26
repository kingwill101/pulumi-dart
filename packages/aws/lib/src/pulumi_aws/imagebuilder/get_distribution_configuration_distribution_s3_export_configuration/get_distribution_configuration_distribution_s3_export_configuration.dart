// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionS3ExportConfiguration {
  /// The disk image format of the exported image (`RAW`, `VHD`, or `VMDK`)
  final String diskImageFormat;

  /// The name of the IAM role to use for exporting.
  final String roleName;

  /// The name of the S3 bucket to store the exported image in.
  final String s3Bucket;

  /// The prefix for the exported image.
  final String s3Prefix;

  GetDistributionConfigurationDistributionS3ExportConfiguration({
    required this.diskImageFormat,
    required this.roleName,
    required this.s3Bucket,
    required this.s3Prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskImageFormat'] = diskImageFormat;
    map['roleName'] = roleName;
    map['s3Bucket'] = s3Bucket;
    map['s3Prefix'] = s3Prefix;
    return map;
  }

  factory GetDistributionConfigurationDistributionS3ExportConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionS3ExportConfiguration(
      diskImageFormat: map['diskImageFormat'] as String,
      roleName: map['roleName'] as String,
      s3Bucket: map['s3Bucket'] as String,
      s3Prefix: map['s3Prefix'] as String,
    );
  }
}
