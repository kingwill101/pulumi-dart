// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobOutputConfig {
  /// ID of the key used to encrypt the output data.
  final String? kmsKeyId;

  /// S3 location to write output data.
  final String s3OutputPath;

  /// SNS output topic ARN.
  final String? snsTopicArn;

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
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['s3OutputPath'] = s3OutputPath;
    final snsTopicArnValue = snsTopicArn;
    if (snsTopicArnValue != null) {
      map['snsTopicArn'] = snsTopicArnValue;
    }
    return map;
  }

  factory LabelingJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      s3OutputPath: map['s3OutputPath'] as String,
      snsTopicArn:
          map['snsTopicArn'] == null ? null : map['snsTopicArn'] as String,
    );
  }
}
