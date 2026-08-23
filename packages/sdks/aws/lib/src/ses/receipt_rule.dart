import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_rule_args.dart';
import 'receipt_rule_state.dart';

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
///     name: "store",
///     ruleSetName: "default-rule-set",
///     recipients: ["karen@example.com"],
///     enabled: true,
///     scanEnabled: true,
///     addHeaderActions: [{
///         headerName: "Custom-Header",
///         headerValue: "Added by SES",
///         position: 1,
///     }],
///     s3Actions: [{
///         bucketName: "emails",
///         position: 2,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Add a header to the email and store it in S3
/// store = aws.ses.ReceiptRule("store",
///     name="store",
///     rule_set_name="default-rule-set",
///     recipients=["karen@example.com"],
///     enabled=True,
///     scan_enabled=True,
///     add_header_actions=[{
///         "header_name": "Custom-Header",
///         "header_value": "Added by SES",
///         "position": 1,
///     }],
///     s3_actions=[{
///         "bucket_name": "emails",
///         "position": 2,
///     }])
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
///         Name = "store",
///         RuleSetName = "default-rule-set",
///         Recipients = new[]
///         {
///             "karen@example.com",
///         },
///         Enabled = true,
///         ScanEnabled = true,
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
/// 			Name:        pulumi.String("store"),
/// 			RuleSetName: pulumi.String("default-rule-set"),
/// 			Recipients: pulumi.StringArray{
/// 				pulumi.String("karen@example.com"),
/// 			},
/// 			Enabled:     pulumi.Bool(true),
/// 			ScanEnabled: pulumi.Bool(true),
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
///   name          = "store"
///   rule_set_name = "default-rule-set"
///   recipients    = ["karen@example.com"]
///   enabled       = true
///   scan_enabled  = true
///   add_header_actions {
///     header_name  = "Custom-Header"
///     header_value = "Added by SES"
///     position     = 1
///   }
///   s3_actions {
///     bucket_name = "emails"
///     position    = 2
///   }
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
///             .name("store")
///             .ruleSetName("default-rule-set")
///             .recipients("karen@example.com")
///             .enabled(true)
///             .scanEnabled(true)
///             .addHeaderActions(ReceiptRuleAddHeaderActionArgs.builder()
///                 .headerName("Custom-Header")
///                 .headerValue("Added by SES")
///                 .position(1)
///                 .build())
///             .s3Actions(ReceiptRuleS3ActionArgs.builder()
///                 .bucketName("emails")
///                 .position(2)
///                 .build())
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
///       name: store
///       ruleSetName: default-rule-set
///       recipients:
///         - karen@example.com
///       enabled: true
///       scanEnabled: true
///       addHeaderActions:
///         - headerName: Custom-Header
///           headerValue: Added by SES
///           position: 1
///       s3Actions:
///         - bucketName: emails
///           position: 2
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
  /// A list of Add Header Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> addHeaderActions;
  /// The name of the rule to place this rule after
  late final pulumi.Output<String?> after;
  /// The SES receipt rule ARN.
  late final pulumi.Output<String> arn;
  /// A list of Bounce Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> bounceActions;
  /// If true, the rule will be enabled
  late final pulumi.Output<bool?> enabled;
  /// A list of Lambda Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> lambdaActions;
  /// The name of the rule
  late final pulumi.Output<String> name;
  /// A list of email addresses
  late final pulumi.Output<List<String>?> recipients;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the rule set
  late final pulumi.Output<String> ruleSetName;
  /// A list of S3 Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> s3Actions;
  /// If true, incoming emails will be scanned for spam and viruses
  late final pulumi.Output<bool?> scanEnabled;
  /// A list of SNS Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> snsActions;
  /// A list of Stop Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> stopActions;
  /// `Require` or `Optional`
  late final pulumi.Output<String> tlsPolicy;
  /// A list of WorkMail Action blocks. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> workmailActions;

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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addHeaderActions = registerOutput<List<Map<String, dynamic>>?>('addHeaderActions');
    after = registerOutput<String?>('after');
    arn = registerOutput<String>('arn');
    bounceActions = registerOutput<List<Map<String, dynamic>>?>('bounceActions');
    enabled = registerOutput<bool?>('enabled');
    lambdaActions = registerOutput<List<Map<String, dynamic>>?>('lambdaActions');
    this.name = registerOutput<String>('name');
    recipients = registerOutput<List<String>?>('recipients');
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
    s3Actions = registerOutput<List<Map<String, dynamic>>?>('s3Actions');
    scanEnabled = registerOutput<bool?>('scanEnabled');
    snsActions = registerOutput<List<Map<String, dynamic>>?>('snsActions');
    stopActions = registerOutput<List<Map<String, dynamic>>?>('stopActions');
    tlsPolicy = registerOutput<String>('tlsPolicy');
    workmailActions = registerOutput<List<Map<String, dynamic>>?>('workmailActions');
  }

  /// Gets an existing [ReceiptRule] resource's state with the given [name] and [id].
  static ReceiptRule get(
    String name,
    pulumi.Input<String> id, {
    ReceiptRuleState? state,
  }) {
    return ReceiptRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    addHeaderActions = registerOutput<List<Map<String, dynamic>>?>('addHeaderActions');
    after = registerOutput<String?>('after');
    arn = registerOutput<String>('arn');
    bounceActions = registerOutput<List<Map<String, dynamic>>?>('bounceActions');
    enabled = registerOutput<bool?>('enabled');
    lambdaActions = registerOutput<List<Map<String, dynamic>>?>('lambdaActions');
    this.name = registerOutput<String>('name');
    recipients = registerOutput<List<String>?>('recipients');
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
    s3Actions = registerOutput<List<Map<String, dynamic>>?>('s3Actions');
    scanEnabled = registerOutput<bool?>('scanEnabled');
    snsActions = registerOutput<List<Map<String, dynamic>>?>('snsActions');
    stopActions = registerOutput<List<Map<String, dynamic>>?>('stopActions');
    tlsPolicy = registerOutput<String>('tlsPolicy');
    workmailActions = registerOutput<List<Map<String, dynamic>>?>('workmailActions');
  }
}
