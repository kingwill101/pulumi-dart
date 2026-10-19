// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationProjectSchemaConversionApplicationAttributes {
  /// S3 bucket path that the application uses for exporting assessment reports.
  final pulumi.Input<String?>? s3BucketPath;
  /// ARN of the IAM role the application uses to access its S3 bucket.
  final pulumi.Input<String?>? s3BucketRoleArn;

  /// Creates a new [MigrationProjectSchemaConversionApplicationAttributes].
  /// [s3BucketPath] S3 bucket path that the application uses for exporting assessment reports.
  /// [s3BucketRoleArn] ARN of the IAM role the application uses to access its S3 bucket.
  const MigrationProjectSchemaConversionApplicationAttributes({
    this.s3BucketPath,
    this.s3BucketRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketPath': ?s3BucketPath,
      's3BucketRoleArn': ?s3BucketRoleArn,
    };
  }

  factory MigrationProjectSchemaConversionApplicationAttributes.fromMap(Map<String, dynamic> map) {
    return MigrationProjectSchemaConversionApplicationAttributes(
      s3BucketPath: (() { final guardedValue = map['s3BucketPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketRoleArn: (() { final guardedValue = map['s3BucketRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
