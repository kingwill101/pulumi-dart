// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMatchingExportingConfigS3Exporting {
  /// The name of the S3 bucket where Identity Resolution Jobs write result files.
  final pulumi.Input<String> s3BucketName;
  /// The S3 key name of the location where Identity Resolution Jobs write result files.
  final pulumi.Input<String>? s3KeyName;

  /// Creates a new [DomainMatchingExportingConfigS3Exporting].
  /// [s3BucketName] The name of the S3 bucket where Identity Resolution Jobs write result files.
  /// [s3KeyName] The S3 key name of the location where Identity Resolution Jobs write result files.
  const DomainMatchingExportingConfigS3Exporting({
    required this.s3BucketName,
    this.s3KeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3KeyName': ?s3KeyName,
    };
  }

  factory DomainMatchingExportingConfigS3Exporting.fromMap(Map<String, dynamic> map) {
    return DomainMatchingExportingConfigS3Exporting(
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyName: (() { final guardedValue = map['s3KeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

