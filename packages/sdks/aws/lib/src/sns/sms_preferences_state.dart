// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SmsPreferences resources.
class SmsPreferencesState {
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

  /// Creates a new [SmsPreferencesState].
  /// [defaultSenderId] A string, such as your business brand, that is displayed as the sender on the receiving device.
  /// [defaultSmsType] The type of SMS message that you will send by default. Possible values are: Promotional, Transactional
  /// [deliveryStatusIamRoleArn] The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs.
  /// [deliveryStatusSuccessSamplingRate] The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between 0 and 100.
  /// [monthlySpendLimit] The maximum amount in USD that you are willing to spend each month to send SMS messages.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [usageReportS3Bucket] The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS.
  const SmsPreferencesState({
    this.defaultSenderId,
    this.defaultSmsType,
    this.deliveryStatusIamRoleArn,
    this.deliveryStatusSuccessSamplingRate,
    this.monthlySpendLimit,
    this.region,
    this.usageReportS3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSenderId': ?defaultSenderId,
      'defaultSmsType': ?defaultSmsType,
      'deliveryStatusIamRoleArn': ?deliveryStatusIamRoleArn,
      'deliveryStatusSuccessSamplingRate': ?deliveryStatusSuccessSamplingRate,
      'monthlySpendLimit': ?monthlySpendLimit,
      'region': ?region,
      'usageReportS3Bucket': ?usageReportS3Bucket,
    };
  }

  factory SmsPreferencesState.fromMap(Map<String, dynamic> map) {
    return SmsPreferencesState(
      defaultSenderId: (() { final guardedValue = map['defaultSenderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSmsType: (() { final guardedValue = map['defaultSmsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryStatusIamRoleArn: (() { final guardedValue = map['deliveryStatusIamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryStatusSuccessSamplingRate: (() { final guardedValue = map['deliveryStatusSuccessSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlySpendLimit: (() { final guardedValue = map['monthlySpendLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageReportS3Bucket: (() { final guardedValue = map['usageReportS3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
