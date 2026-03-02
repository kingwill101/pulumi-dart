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
  LabelingJobOutputConfig({
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
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      s3OutputPath: (map['s3OutputPath'] as String).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : (map['snsTopicArn'] as String).input(),
    );
  }
}

