import 'package:pulumi/pulumi.dart';
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
class SmsPreferences extends CustomResource {
  /// A string, such as your business brand, that is displayed as the sender on the receiving device.
  late final Output<String?> defaultSenderId;

  /// The type of SMS message that you will send by default. Possible values are: Promotional, Transactional
  late final Output<String?> defaultSmsType;

  /// The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs.
  late final Output<String?> deliveryStatusIamRoleArn;

  /// The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value must be between 0 and 100.
  late final Output<String?> deliveryStatusSuccessSamplingRate;

  /// The maximum amount in USD that you are willing to spend each month to send SMS messages.
  late final Output<int> monthlySpendLimit;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS.
  late final Output<String?> usageReportS3Bucket;

  SmsPreferences(
    String name, {
    SmsPreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sns/smsPreferences:SmsPreferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
