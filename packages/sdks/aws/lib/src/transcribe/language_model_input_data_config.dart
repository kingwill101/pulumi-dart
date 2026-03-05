// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LanguageModelInputDataConfig {
  /// IAM role with access to S3 bucket.
  final pulumi.Input<String> dataAccessRoleArn;
  /// S3 URI where training data is located.
  final pulumi.Input<String> s3Uri;
  /// S3 URI where tuning data is located.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tuningDataS3Uri;

  /// Creates a new [LanguageModelInputDataConfig].
  /// [dataAccessRoleArn] IAM role with access to S3 bucket.
  /// [s3Uri] S3 URI where training data is located.
  /// [tuningDataS3Uri] S3 URI where tuning data is located.
  LanguageModelInputDataConfig({
    required this.dataAccessRoleArn,
    required this.s3Uri,
    this.tuningDataS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccessRoleArn': dataAccessRoleArn,
      's3Uri': s3Uri,
      'tuningDataS3Uri': ?tuningDataS3Uri,
    };
  }

  factory LanguageModelInputDataConfig.fromMap(Map<String, dynamic> map) {
    return LanguageModelInputDataConfig(
      dataAccessRoleArn: pulumi.Input.fromValue(map['dataAccessRoleArn'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      tuningDataS3Uri: (() { final guardedValue = map['tuningDataS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

