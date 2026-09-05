// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleS3Action {
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucketName;
  /// ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket, optionally encrypting your mail via the provided customer managed key, and publishing to the Amazon SNS topic.
  final pulumi.Input<String?>? iamRoleArn;
  /// ARN of the KMS key.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Key prefix of the S3 bucket.
  final pulumi.Input<String?>? objectKeyPrefix;
  /// Position of the action in the receipt rule.
  final pulumi.Input<int> position;
  /// ARN of an SNS topic to notify.
  final pulumi.Input<String?>? topicArn;

  /// Creates a new [ReceiptRuleS3Action].
  /// [bucketName] Name of the S3 bucket.
  /// [iamRoleArn] ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket, optionally encrypting your mail via the provided customer managed key, and publishing to the Amazon SNS topic.
  /// [kmsKeyArn] ARN of the KMS key.
  /// [objectKeyPrefix] Key prefix of the S3 bucket.
  /// [position] Position of the action in the receipt rule.
  /// [topicArn] ARN of an SNS topic to notify.
  const ReceiptRuleS3Action({
    required this.bucketName,
    this.iamRoleArn,
    this.kmsKeyArn,
    this.objectKeyPrefix,
    required this.position,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'iamRoleArn': ?iamRoleArn,
      'kmsKeyArn': ?kmsKeyArn,
      'objectKeyPrefix': ?objectKeyPrefix,
      'position': position,
      'topicArn': ?topicArn,
    };
  }

  factory ReceiptRuleS3Action.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleS3Action(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectKeyPrefix: (() { final guardedValue = map['objectKeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: pulumi.Input.fromValue((map['position'] as num).toInt()),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
