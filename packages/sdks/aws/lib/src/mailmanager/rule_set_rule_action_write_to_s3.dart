// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionWriteToS3 {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// ARN of the IAM role used to write to S3.
  final pulumi.Input<String> roleArn;
  /// Name of the S3 bucket.
  final pulumi.Input<String> s3Bucket;
  /// S3 object key prefix.
  final pulumi.Input<String>? s3Prefix;
  /// KMS key identifier used to encrypt the email.
  final pulumi.Input<String>? s3SseKmsKeyId;

  /// Creates a new [RuleSetRuleActionWriteToS3].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [roleArn] ARN of the IAM role used to write to S3.
  /// [s3Bucket] Name of the S3 bucket.
  /// [s3Prefix] S3 object key prefix.
  /// [s3SseKmsKeyId] KMS key identifier used to encrypt the email.
  const RuleSetRuleActionWriteToS3({
    this.actionFailurePolicy,
    required this.roleArn,
    required this.s3Bucket,
    this.s3Prefix,
    this.s3SseKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'roleArn': roleArn,
      's3Bucket': s3Bucket,
      's3Prefix': ?s3Prefix,
      's3SseKmsKeyId': ?s3SseKmsKeyId,
    };
  }

  factory RuleSetRuleActionWriteToS3.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionWriteToS3(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3SseKmsKeyId: (() { final guardedValue = map['s3SseKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
