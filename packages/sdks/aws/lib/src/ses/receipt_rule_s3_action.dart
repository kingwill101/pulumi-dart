// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleS3Action {
  /// The name of the S3 bucket
  final pulumi.Input<String> bucketName;
  /// The ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket, optionally encrypting your mail via the provided customer managed key, and publishing to the Amazon SNS topic
  final pulumi.Input<String>? iamRoleArn;
  /// The ARN of the KMS key
  final pulumi.Input<String>? kmsKeyArn;
  /// The key prefix of the S3 bucket
  final pulumi.Input<String>? objectKeyPrefix;
  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;
  /// The ARN of an SNS topic to notify
  final pulumi.Input<String>? topicArn;

  /// Creates a new [ReceiptRuleS3Action].
  /// [bucketName] The name of the S3 bucket
  /// [iamRoleArn] The ARN of the IAM role to be used by Amazon Simple Email Service while writing to the Amazon S3 bucket, optionally encrypting your mail via the provided customer managed key, and publishing to the Amazon SNS topic
  /// [kmsKeyArn] The ARN of the KMS key
  /// [objectKeyPrefix] The key prefix of the S3 bucket
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleS3Action({
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
      bucketName: (map['bucketName'] as String).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : (map['iamRoleArn'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      objectKeyPrefix: map['objectKeyPrefix'] == null ? null : (map['objectKeyPrefix'] as String).input(),
      position: (map['position'] as int).input(),
      topicArn: map['topicArn'] == null ? null : (map['topicArn'] as String).input(),
    );
  }
}

