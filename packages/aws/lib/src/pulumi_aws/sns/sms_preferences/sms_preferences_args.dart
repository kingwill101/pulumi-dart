// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SmsPreferences.
class SmsPreferencesArgs {
  /// A string, such as your business brand, that is displayed as the sender on the receiving device.
  final pulumi.Input<String>? defaultSenderId;

  /// The type of SMS message that you will send by default. Possible values are: Promotional, Transactional
  final pulumi.Input<String>? defaultSmsType;

  /// The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs.
  final pulumi.Input<String>? deliveryStatusIamRoleArn;

  /// The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between 0 and 100.
  final pulumi.Input<String>? deliveryStatusSuccessSamplingRate;

  /// The maximum amount in USD that you are willing to spend each month to send SMS messages.
  final pulumi.Input<int>? monthlySpendLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS.
  final pulumi.Input<String>? usageReportS3Bucket;

  SmsPreferencesArgs({
    this.defaultSenderId,
    this.defaultSmsType,
    this.deliveryStatusIamRoleArn,
    this.deliveryStatusSuccessSamplingRate,
    this.monthlySpendLimit,
    this.region,
    this.usageReportS3Bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultSenderIdValue = defaultSenderId;
    if (defaultSenderIdValue != null) {
      map['defaultSenderId'] = defaultSenderIdValue;
    }
    final defaultSmsTypeValue = defaultSmsType;
    if (defaultSmsTypeValue != null) {
      map['defaultSmsType'] = defaultSmsTypeValue;
    }
    final deliveryStatusIamRoleArnValue = deliveryStatusIamRoleArn;
    if (deliveryStatusIamRoleArnValue != null) {
      map['deliveryStatusIamRoleArn'] = deliveryStatusIamRoleArnValue;
    }
    final deliveryStatusSuccessSamplingRateValue =
        deliveryStatusSuccessSamplingRate;
    if (deliveryStatusSuccessSamplingRateValue != null) {
      map['deliveryStatusSuccessSamplingRate'] =
          deliveryStatusSuccessSamplingRateValue;
    }
    final monthlySpendLimitValue = monthlySpendLimit;
    if (monthlySpendLimitValue != null) {
      map['monthlySpendLimit'] = monthlySpendLimitValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final usageReportS3BucketValue = usageReportS3Bucket;
    if (usageReportS3BucketValue != null) {
      map['usageReportS3Bucket'] = usageReportS3BucketValue;
    }
    return map;
  }

  factory SmsPreferencesArgs.fromMap(Map<String, dynamic> map) {
    return SmsPreferencesArgs(
      defaultSenderId:
          pulumi.Input.asOptionalInput<String>(map['defaultSenderId']),
      defaultSmsType:
          pulumi.Input.asOptionalInput<String>(map['defaultSmsType']),
      deliveryStatusIamRoleArn:
          pulumi.Input.asOptionalInput<String>(map['deliveryStatusIamRoleArn']),
      deliveryStatusSuccessSamplingRate: pulumi.Input.asOptionalInput<String>(
          map['deliveryStatusSuccessSamplingRate']),
      monthlySpendLimit:
          pulumi.Input.asOptionalInput<int>(map['monthlySpendLimit']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      usageReportS3Bucket:
          pulumi.Input.asOptionalInput<String>(map['usageReportS3Bucket']),
    );
  }
}
