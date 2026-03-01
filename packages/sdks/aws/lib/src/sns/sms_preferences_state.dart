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
  SmsPreferencesState({
    pulumi.Output<String>? defaultSenderId,
    pulumi.Output<String>? defaultSmsType,
    pulumi.Output<String>? deliveryStatusIamRoleArn,
    pulumi.Output<String>? deliveryStatusSuccessSamplingRate,
    pulumi.Output<int>? monthlySpendLimit,
    pulumi.Output<String>? region,
    pulumi.Output<String>? usageReportS3Bucket,
  }) :
      defaultSenderId = pulumi.Input.asOptionalInput<String>(defaultSenderId),
      defaultSmsType = pulumi.Input.asOptionalInput<String>(defaultSmsType),
      deliveryStatusIamRoleArn = pulumi.Input.asOptionalInput<String>(deliveryStatusIamRoleArn),
      deliveryStatusSuccessSamplingRate = pulumi.Input.asOptionalInput<String>(deliveryStatusSuccessSamplingRate),
      monthlySpendLimit = pulumi.Input.asOptionalInput<int>(monthlySpendLimit),
      region = pulumi.Input.asOptionalInput<String>(region),
      usageReportS3Bucket = pulumi.Input.asOptionalInput<String>(usageReportS3Bucket);

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
      defaultSenderId: map['defaultSenderId'] == null ? null : pulumi.Output.create<String>(map['defaultSenderId'] as String),
      defaultSmsType: map['defaultSmsType'] == null ? null : pulumi.Output.create<String>(map['defaultSmsType'] as String),
      deliveryStatusIamRoleArn: map['deliveryStatusIamRoleArn'] == null ? null : pulumi.Output.create<String>(map['deliveryStatusIamRoleArn'] as String),
      deliveryStatusSuccessSamplingRate: map['deliveryStatusSuccessSamplingRate'] == null ? null : pulumi.Output.create<String>(map['deliveryStatusSuccessSamplingRate'] as String),
      monthlySpendLimit: map['monthlySpendLimit'] == null ? null : pulumi.Output.create<int>(map['monthlySpendLimit'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      usageReportS3Bucket: map['usageReportS3Bucket'] == null ? null : pulumi.Output.create<String>(map['usageReportS3Bucket'] as String),
    );
  }
}

