import 'package:pulumi/pulumi.dart';
import 'sms_preferences_args.dart';

/// Provides a way to set SNS SMS preferences.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const updateSmsPrefs = new aws.sns.SmsPreferences("update_sms_prefs", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// update_sms_prefs = aws.sns.SmsPreferences("update_sms_prefs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var updateSmsPrefs = new Aws.Sns.SmsPreferences("update_sms_prefs");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewSmsPreferences(ctx, "update_sms_prefs", nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.SmsPreferences;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var updateSmsPrefs = new SmsPreferences("updateSmsPrefs");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// updateSmsPrefs:
/// type: aws:sns:SmsPreferences
/// name: update_sms_prefs
/// ```
/// <!--End PulumiCodeChooser -->
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
    this.defaultSenderId = Output.createUnknown<String?>();
    this.defaultSmsType = Output.createUnknown<String?>();
    this.deliveryStatusIamRoleArn = Output.createUnknown<String?>();
    this.deliveryStatusSuccessSamplingRate = Output.createUnknown<String?>();
    this.monthlySpendLimit = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.usageReportS3Bucket = Output.createUnknown<String?>();
  }
}
