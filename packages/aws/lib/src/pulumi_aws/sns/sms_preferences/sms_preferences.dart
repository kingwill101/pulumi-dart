import 'package:pulumi/pulumi.dart' as pulumi;
import 'sms_preferences_args.dart';

/// Provides a way to set SNS SMS preferences.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// You cannot import the SMS preferences.
class SmsPreferences extends pulumi.CustomResource {
  /// A string, such as your business brand, that is displayed as the sender on the receiving device.
  late final pulumi.Output<String?> defaultSenderId;

  /// The type of SMS message that you will send by default. Possible values are: Promotional, Transactional
  late final pulumi.Output<String?> defaultSmsType;

  /// The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs.
  late final pulumi.Output<String?> deliveryStatusIamRoleArn;

  /// The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between 0 and 100.
  late final pulumi.Output<String?> deliveryStatusSuccessSamplingRate;

  /// The maximum amount in USD that you are willing to spend each month to send SMS messages.
  late final pulumi.Output<int> monthlySpendLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS.
  late final pulumi.Output<String?> usageReportS3Bucket;

  SmsPreferences(
    String name, {
    SmsPreferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/smsPreferences:SmsPreferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultSenderId = registerOutput<String?>('defaultSenderId');
    this.defaultSmsType = registerOutput<String?>('defaultSmsType');
    this.deliveryStatusIamRoleArn =
        registerOutput<String?>('deliveryStatusIamRoleArn');
    this.deliveryStatusSuccessSamplingRate =
        registerOutput<String?>('deliveryStatusSuccessSamplingRate');
    this.monthlySpendLimit = registerOutput<int>('monthlySpendLimit');
    this.region = registerOutput<String>('region');
    this.usageReportS3Bucket = registerOutput<String?>('usageReportS3Bucket');
  }
}
