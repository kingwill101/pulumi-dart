// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration {
  /// A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use `s3_prefix` to include only the desired metadata files.
  final pulumi.Input<String>? s3Prefix;

  /// Creates a new [DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration].
  /// [s3Prefix] A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use `s3_prefix` to include only the desired metadata files.
  DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration({
    this.s3Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3Prefix': ?s3Prefix};
  }

  factory DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration(
      s3Prefix: (() {
        final guardedValue = map['s3Prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
