// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobOutputConfig {
  /// ID of the key used to encrypt the output data.
  final pulumi.Input<String>? kmsKeyId;
  /// S3 location to write output data.
  final pulumi.Input<String> s3OutputPath;
  /// SNS output topic ARN.
  final pulumi.Input<String>? snsTopicArn;

  /// Creates a new [LabelingJobOutputConfig].
  /// [kmsKeyId] ID of the key used to encrypt the output data.
  /// [s3OutputPath] S3 location to write output data.
  /// [snsTopicArn] SNS output topic ARN.
  const LabelingJobOutputConfig({
    this.kmsKeyId,
    required this.s3OutputPath,
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      's3OutputPath': s3OutputPath,
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory LabelingJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobOutputConfig(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

