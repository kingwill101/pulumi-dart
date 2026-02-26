import 'package:pulumi/pulumi.dart';
import '../receipt_rule_add_header_action/receipt_rule_add_header_action.dart';
import '../receipt_rule_bounce_action/receipt_rule_bounce_action.dart';
import '../receipt_rule_lambda_action/receipt_rule_lambda_action.dart';
import '../receipt_rule_s3_action/receipt_rule_s3_action.dart';
import '../receipt_rule_sns_action/receipt_rule_sns_action.dart';
import '../receipt_rule_stop_action/receipt_rule_stop_action.dart';
import '../receipt_rule_workmail_action/receipt_rule_workmail_action.dart';
import 'receipt_rule_args.dart';

/// Provides an SES receipt rule resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Add a header to the email and store it in S3
/// const store = new aws.ses.ReceiptRule("store", {
/// name: "store",
/// ruleSetName: "default-rule-set",
/// recipients: ["karen@example.com"],
/// enabled: true,
/// scanEnabled: true,
/// addHeaderActions: [{
/// headerName: "Custom-Header",
/// headerValue: "Added by SES",
/// position: 1,
/// }],
/// s3Actions: [{
/// bucketName: "emails",
/// position: 2,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Add a header to the email and store it in S3
/// store = aws.ses.ReceiptRule("store",
/// name="store",
/// rule_set_name="default-rule-set",
/// recipients=["karen@example.com"],
/// enabled=True,
/// scan_enabled=True,
/// add_header_actions=[{
/// "header_name": "Custom-Header",
/// "header_value": "Added by SES",
/// "position": 1,
/// }],
/// s3_actions=[{
/// "bucket_name": "emails",
/// "position": 2,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Add a header to the email and store it in S3
/// var store = new Aws.Ses.ReceiptRule("store", new()
/// {
/// Name = "store",
/// RuleSetName = "default-rule-set",
/// Recipients = new[]
/// {
/// "karen@example.com",
/// },
/// Enabled = true,
/// ScanEnabled = true,
/// AddHeaderActions = new[]
/// {
/// new Aws.Ses.Inputs.ReceiptRuleAddHeaderActionArgs
/// {
/// HeaderName = "Custom-Header",
/// HeaderValue = "Added by SES",
/// Position = 1,
/// },
/// },
/// S3Actions = new[]
/// {
/// new Aws.Ses.Inputs.ReceiptRuleS3ActionArgs
/// {
/// BucketName = "emails",
/// Position = 2,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Add a header to the email and store it in S3
/// _, err := ses.NewReceiptRule(ctx, "store", &ses.ReceiptRuleArgs{
/// Name:        pulumi.String("store"),
/// RuleSetName: pulumi.String("default-rule-set"),
/// Recipients: pulumi.StringArray{
/// pulumi.String("karen@example.com"),
/// },
/// Enabled:     pulumi.Bool(true),
/// ScanEnabled: pulumi.Bool(true),
/// AddHeaderActions: ses.ReceiptRuleAddHeaderActionArray{
/// &ses.ReceiptRuleAddHeaderActionArgs{
/// HeaderName:  pulumi.String("Custom-Header"),
/// HeaderValue: pulumi.String("Added by SES"),
/// Position:    pulumi.Int(1),
/// },
/// },
/// S3Actions: ses.ReceiptRuleS3ActionArray{
/// &ses.ReceiptRuleS3ActionArgs{
/// BucketName: pulumi.String("emails"),
/// Position:   pulumi.Int(2),
/// },
/// },
/// })
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
/// import com.pulumi.aws.ses.ReceiptRule;
/// import com.pulumi.aws.ses.ReceiptRuleArgs;
/// import com.pulumi.aws.ses.inputs.ReceiptRuleAddHeaderActionArgs;
/// import com.pulumi.aws.ses.inputs.ReceiptRuleS3ActionArgs;
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
/// // Add a header to the email and store it in S3
/// var store = new ReceiptRule("store", ReceiptRuleArgs.builder()
/// .name("store")
/// .ruleSetName("default-rule-set")
/// .recipients("karen@example.com")
/// .enabled(true)
/// .scanEnabled(true)
/// .addHeaderActions(ReceiptRuleAddHeaderActionArgs.builder()
/// .headerName("Custom-Header")
/// .headerValue("Added by SES")
/// .position(1)
/// .build())
/// .s3Actions(ReceiptRuleS3ActionArgs.builder()
/// .bucketName("emails")
/// .position(2)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Add a header to the email and store it in S3
/// store:
/// type: aws:ses:ReceiptRule
/// properties:
/// name: store
/// ruleSetName: default-rule-set
/// recipients:
/// - karen@example.com
/// enabled: true
/// scanEnabled: true
/// addHeaderActions:
/// - headerName: Custom-Header
/// headerValue: Added by SES
/// position: 1
/// s3Actions:
/// - bucketName: emails
/// position: 2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SES receipt rules using the ruleset name and rule name separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptRule:ReceiptRule my_rule my_rule_set:my_rule
/// ```
class ReceiptRule extends CustomResource {
  /// A list of Add Header Action blocks. Documented below.
  late final Output<List<ReceiptRuleAddHeaderAction>?> addHeaderActions;

  /// The name of the rule to place this rule after
  late final Output<String?> after;

  /// The SES receipt rule ARN.
  late final Output<String> arn;

  /// A list of Bounce Action blocks. Documented below.
  late final Output<List<ReceiptRuleBounceAction>?> bounceActions;

  /// If true, the rule will be enabled
  late final Output<bool?> enabled;

  /// A list of Lambda Action blocks. Documented below.
  late final Output<List<ReceiptRuleLambdaAction>?> lambdaActions;

  /// The name of the rule
  late final Output<String> name;

  /// A list of email addresses
  late final Output<List<String>?> recipients;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the rule set
  late final Output<String> ruleSetName;

  /// A list of S3 Action blocks. Documented below.
  late final Output<List<ReceiptRuleS3Action>?> s3Actions;

  /// If true, incoming emails will be scanned for spam and viruses
  late final Output<bool?> scanEnabled;

  /// A list of SNS Action blocks. Documented below.
  late final Output<List<ReceiptRuleSnsAction>?> snsActions;

  /// A list of Stop Action blocks. Documented below.
  late final Output<List<ReceiptRuleStopAction>?> stopActions;

  /// `Require` or `Optional`
  late final Output<String> tlsPolicy;

  /// A list of WorkMail Action blocks. Documented below.
  late final Output<List<ReceiptRuleWorkmailAction>?> workmailActions;

  ReceiptRule(
    String name, {
    ReceiptRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRule:ReceiptRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addHeaderActions =
        registerOutput<List<ReceiptRuleAddHeaderAction>?>('addHeaderActions');
    this.after = registerOutput<String?>('after');
    this.arn = registerOutput<String>('arn');
    this.bounceActions =
        registerOutput<List<ReceiptRuleBounceAction>?>('bounceActions');
    this.enabled = registerOutput<bool?>('enabled');
    this.lambdaActions =
        registerOutput<List<ReceiptRuleLambdaAction>?>('lambdaActions');
    this.name = registerOutput<String>('name');
    this.recipients = registerOutput<List<String>?>('recipients');
    this.region = registerOutput<String>('region');
    this.ruleSetName = registerOutput<String>('ruleSetName');
    this.s3Actions = registerOutput<List<ReceiptRuleS3Action>?>('s3Actions');
    this.scanEnabled = registerOutput<bool?>('scanEnabled');
    this.snsActions = registerOutput<List<ReceiptRuleSnsAction>?>('snsActions');
    this.stopActions =
        registerOutput<List<ReceiptRuleStopAction>?>('stopActions');
    this.tlsPolicy = registerOutput<String>('tlsPolicy');
    this.workmailActions =
        registerOutput<List<ReceiptRuleWorkmailAction>?>('workmailActions');
  }
}
