// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleS3Action {
  /// The name of the S3 bucket
  final String bucketName;

  /// The ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket, optionally encrypting your mail via the provided customer managed key, and publishing to the Amazon SNS topic
  final String? iamRoleArn;

  /// The ARN of the KMS key
  final String? kmsKeyArn;

  /// The key prefix of the S3 bucket
  final String? objectKeyPrefix;

  /// The position of the action in the receipt rule
  final int position;

  /// The ARN of an SNS topic to notify
  final String? topicArn;

  ReceiptRuleS3Action({
    required this.bucketName,
    this.iamRoleArn,
    this.kmsKeyArn,
    this.objectKeyPrefix,
    required this.position,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final objectKeyPrefixValue = objectKeyPrefix;
    if (objectKeyPrefixValue != null) {
      map['objectKeyPrefix'] = objectKeyPrefixValue;
    }
    map['position'] = position;
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    return map;
  }

  factory ReceiptRuleS3Action.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleS3Action(
      bucketName: map['bucketName'] as String,
      iamRoleArn:
          map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      objectKeyPrefix: map['objectKeyPrefix'] == null
          ? null
          : map['objectKeyPrefix'] as String,
      position: map['position'] as int,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}
