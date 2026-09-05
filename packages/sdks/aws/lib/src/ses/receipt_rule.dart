import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_rule_add_header_action.dart';
import 'receipt_rule_args.dart';
import 'receipt_rule_bounce_action.dart';
import 'receipt_rule_lambda_action.dart';
import 'receipt_rule_s3_action.dart';
import 'receipt_rule_sns_action.dart';
import 'receipt_rule_state.dart';
import 'receipt_rule_stop_action.dart';
import 'receipt_rule_workmail_action.dart';

/// Provides an SES receipt rule resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Add a header to the email and store it in S3
/// const store = new aws.ses.ReceiptRule("store", {
///     addHeaderActions: [{
///         headerName: "Custom-Header",
///         headerValue: "Added by SES",
///         position: 1,
///     }],
///     s3Actions: [{
///         bucketName: "emails",
///         position: 2,
///     }],
///     name: "store",
///     ruleSetName: "default-rule-set",
///     recipients: ["karen@example.com"],
///     enabled: true,
///     scanEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Add a header to the email and store it in S3
/// store = aws.ses.ReceiptRule("store",
///     add_header_actions=[{
///         "header_name": "Custom-Header",
///         "header_value": "Added by SES",
///         "position": 1,
///     }],
///     s3_actions=[{
///         "bucket_name": "emails",
///         "position": 2,
///     }],
///     name="store",
///     rule_set_name="default-rule-set",
///     recipients=["karen@example.com"],
///     enabled=True,
///     scan_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Add a header to the email and store it in S3
///     var store = new Aws.Ses.ReceiptRule("store", new()
///     {
///         AddHeaderActions = new[]
///         {
///             new Aws.Ses.Inputs.ReceiptRuleAddHeaderActionArgs
///             {
///                 HeaderName = "Custom-Header",
///                 HeaderValue = "Added by SES",
///                 Position = 1,
///             },
///         },
///         S3Actions = new[]
///         {
///             new Aws.Ses.Inputs.ReceiptRuleS3ActionArgs
///             {
///                 BucketName = "emails",
///                 Position = 2,
///             },
///         },
///         Name = "store",
///         RuleSetName = "default-rule-set",
///         Recipients = new[]
///         {
///             "karen@example.com",
///         },
///         Enabled = true,
///         ScanEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Add a header to the email and store it in S3
/// 		_, err := ses.NewReceiptRule(ctx, "store", &ses.ReceiptRuleArgs{
/// 			AddHeaderActions: ses.ReceiptRuleAddHeaderActionArray{
/// 				&ses.ReceiptRuleAddHeaderActionArgs{
/// 					HeaderName:  pulumi.String("Custom-Header"),
/// 					HeaderValue: pulumi.String("Added by SES"),
/// 					Position:    pulumi.Int(1),
/// 				},
/// 			},
/// 			S3Actions: ses.ReceiptRuleS3ActionArray{
/// 				&ses.ReceiptRuleS3ActionArgs{
/// 					BucketName: pulumi.String("emails"),
/// 					Position:   pulumi.Int(2),
/// 				},
/// 			},
/// 			Name:        pulumi.String("store"),
/// 			RuleSetName: pulumi.String("default-rule-set"),
/// 			Recipients: pulumi.StringArray{
/// 				pulumi.String("karen@example.com"),
/// 			},
/// 			Enabled:     pulumi.Bool(true),
/// 			ScanEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// # Add a header to the email and store it in S3
/// resource "aws_ses_receiptrule" "store" {
///   add_header_actions {
///     header_name  = "Custom-Header"
///     header_value = "Added by SES"
///     position     = 1
///   }
///   s3_actions {
///     bucket_name = "emails"
///     position    = 2
///   }
///   name          = "store"
///   rule_set_name = "default-rule-set"
///   recipients    = ["karen@example.com"]
///   enabled       = true
///   scan_enabled  = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Add a header to the email and store it in S3
///         var store = new ReceiptRule("store", ReceiptRuleArgs.builder()
///             .addHeaderActions(ReceiptRuleAddHeaderActionArgs.builder()
///                 .headerName("Custom-Header")
///                 .headerValue("Added by SES")
///                 .position(1)
///                 .build())
///             .s3Actions(ReceiptRuleS3ActionArgs.builder()
///                 .bucketName("emails")
///                 .position(2)
///                 .build())
///             .name("store")
///             .ruleSetName("default-rule-set")
///             .recipients("karen@example.com")
///             .enabled(true)
///             .scanEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Add a header to the email and store it in S3
///   store:
///     type: aws:ses:ReceiptRule
///     properties:
///       addHeaderActions:
///         - headerName: Custom-Header
///           headerValue: Added by SES
///           position: 1
///       s3Actions:
///         - bucketName: emails
///           position: 2
///       name: store
///       ruleSetName: default-rule-set
///       recipients:
///         - karen@example.com
///       enabled: true
///       scanEnabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES receipt rules using the ruleset name and rule name separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptRule:ReceiptRule my_rule my_rule_set:my_rule
/// ```
class ReceiptRule extends pulumi.CustomResource {
  /// Configuration block for adding a header to received emails. Detailed below.
  late final pulumi.Output<List<ReceiptRuleAddHeaderAction>?> addHeaderActions;
  /// Name of the rule to place this rule after.
  late final pulumi.Output<String?> after;
  /// SES receipt rule ARN.
  late final pulumi.Output<String> arn;
  /// Configuration block for rejecting received emails. Detailed below.
  late final pulumi.Output<List<ReceiptRuleBounceAction>?> bounceActions;
  /// If true, the rule will be enabled.
  late final pulumi.Output<bool?> enabled;
  /// Configuration block for calling an AWS Lambda function. Detailed below.
  late final pulumi.Output<List<ReceiptRuleLambdaAction>?> lambdaActions;
  /// Name of the rule.
  late final pulumi.Output<String> name;
  /// List of email addresses.
  late final pulumi.Output<List<String>?> recipients;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the rule set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleSetName;
  /// Configuration block for storing received emails in an S3 bucket. Detailed below.
  late final pulumi.Output<List<ReceiptRuleS3Action>?> s3Actions;
  /// If true, incoming emails will be scanned for spam and viruses.
  late final pulumi.Output<bool?> scanEnabled;
  /// Configuration block for publishing to an SNS topic. Detailed below.
  late final pulumi.Output<List<ReceiptRuleSnsAction>?> snsActions;
  /// Configuration block for terminating the evaluation of the receipt rule set. Detailed below.
  late final pulumi.Output<List<ReceiptRuleStopAction>?> stopActions;
  /// `Require` or `Optional`.
  late final pulumi.Output<String> tlsPolicy;
  /// Configuration block for calling Amazon WorkMail. Detailed below.
  late final pulumi.Output<List<ReceiptRuleWorkmailAction>?> workmailActions;

  /// Creates a new [ReceiptRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReceiptRule]. {@macro pulumi_ses_receipt_rule_receipt_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReceiptRule(
    String name, {
    ReceiptRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRule:ReceiptRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    addHeaderActions = registerOutput<List<ReceiptRuleAddHeaderAction>?>('addHeaderActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(guardedValue, (value) => ReceiptRuleAddHeaderAction.fromMap((value as Map).cast<String, dynamic>())); });
    after = registerOutput<String?>('after');
    arn = registerOutput<String>('arn');
    bounceActions = registerOutput<List<ReceiptRuleBounceAction>?>('bounceActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleBounceAction>(guardedValue, (value) => ReceiptRuleBounceAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool?>('enabled');
    lambdaActions = registerOutput<List<ReceiptRuleLambdaAction>?>('lambdaActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleLambdaAction>(guardedValue, (value) => ReceiptRuleLambdaAction.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    recipients = registerOutput<List<String>?>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
    s3Actions = registerOutput<List<ReceiptRuleS3Action>?>('s3Actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleS3Action>(guardedValue, (value) => ReceiptRuleS3Action.fromMap((value as Map).cast<String, dynamic>())); });
    scanEnabled = registerOutput<bool?>('scanEnabled');
    snsActions = registerOutput<List<ReceiptRuleSnsAction>?>('snsActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleSnsAction>(guardedValue, (value) => ReceiptRuleSnsAction.fromMap((value as Map).cast<String, dynamic>())); });
    stopActions = registerOutput<List<ReceiptRuleStopAction>?>('stopActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleStopAction>(guardedValue, (value) => ReceiptRuleStopAction.fromMap((value as Map).cast<String, dynamic>())); });
    tlsPolicy = registerOutput<String>('tlsPolicy');
    workmailActions = registerOutput<List<ReceiptRuleWorkmailAction>?>('workmailActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(guardedValue, (value) => ReceiptRuleWorkmailAction.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ReceiptRule] resource's state with the given [name] and [id].
  static ReceiptRule get(
    String name,
    pulumi.Input<String> id, {
    ReceiptRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReceiptRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReceiptRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRule:ReceiptRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addHeaderActions = registerOutput<List<ReceiptRuleAddHeaderAction>?>('addHeaderActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(guardedValue, (value) => ReceiptRuleAddHeaderAction.fromMap((value as Map).cast<String, dynamic>())); });
    after = registerOutput<String?>('after');
    arn = registerOutput<String>('arn');
    bounceActions = registerOutput<List<ReceiptRuleBounceAction>?>('bounceActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleBounceAction>(guardedValue, (value) => ReceiptRuleBounceAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool?>('enabled');
    lambdaActions = registerOutput<List<ReceiptRuleLambdaAction>?>('lambdaActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleLambdaAction>(guardedValue, (value) => ReceiptRuleLambdaAction.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    recipients = registerOutput<List<String>?>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
    s3Actions = registerOutput<List<ReceiptRuleS3Action>?>('s3Actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleS3Action>(guardedValue, (value) => ReceiptRuleS3Action.fromMap((value as Map).cast<String, dynamic>())); });
    scanEnabled = registerOutput<bool?>('scanEnabled');
    snsActions = registerOutput<List<ReceiptRuleSnsAction>?>('snsActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleSnsAction>(guardedValue, (value) => ReceiptRuleSnsAction.fromMap((value as Map).cast<String, dynamic>())); });
    stopActions = registerOutput<List<ReceiptRuleStopAction>?>('stopActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleStopAction>(guardedValue, (value) => ReceiptRuleStopAction.fromMap((value as Map).cast<String, dynamic>())); });
    tlsPolicy = registerOutput<String>('tlsPolicy');
    workmailActions = registerOutput<List<ReceiptRuleWorkmailAction>?>('workmailActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(guardedValue, (value) => ReceiptRuleWorkmailAction.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ReceiptRule] resource.
  ReceiptRule.reference(String urn)
    : super(
        'aws:ses/receiptRule:ReceiptRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addHeaderActions = registerOutput<List<ReceiptRuleAddHeaderAction>?>('addHeaderActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(guardedValue, (value) => ReceiptRuleAddHeaderAction.fromMap((value as Map).cast<String, dynamic>())); });
    after = registerOutput<String?>('after');
    arn = registerOutput<String>('arn');
    bounceActions = registerOutput<List<ReceiptRuleBounceAction>?>('bounceActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleBounceAction>(guardedValue, (value) => ReceiptRuleBounceAction.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool?>('enabled');
    lambdaActions = registerOutput<List<ReceiptRuleLambdaAction>?>('lambdaActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleLambdaAction>(guardedValue, (value) => ReceiptRuleLambdaAction.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    recipients = registerOutput<List<String>?>('recipients', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
    s3Actions = registerOutput<List<ReceiptRuleS3Action>?>('s3Actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleS3Action>(guardedValue, (value) => ReceiptRuleS3Action.fromMap((value as Map).cast<String, dynamic>())); });
    scanEnabled = registerOutput<bool?>('scanEnabled');
    snsActions = registerOutput<List<ReceiptRuleSnsAction>?>('snsActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleSnsAction>(guardedValue, (value) => ReceiptRuleSnsAction.fromMap((value as Map).cast<String, dynamic>())); });
    stopActions = registerOutput<List<ReceiptRuleStopAction>?>('stopActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleStopAction>(guardedValue, (value) => ReceiptRuleStopAction.fromMap((value as Map).cast<String, dynamic>())); });
    tlsPolicy = registerOutput<String>('tlsPolicy');
    workmailActions = registerOutput<List<ReceiptRuleWorkmailAction>?>('workmailActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(guardedValue, (value) => ReceiptRuleWorkmailAction.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
