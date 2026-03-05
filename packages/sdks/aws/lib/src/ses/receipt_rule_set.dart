import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_rule_set_args.dart';
import 'receipt_rule_set_state.dart';

/// Provides an SES receipt rule set resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ses.ReceiptRuleSet("main", {ruleSetName: "primary-rules"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ses.ReceiptRuleSet("main", rule_set_name="primary-rules")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ses.ReceiptRuleSet("main", new()
///     {
///         RuleSetName = "primary-rules",
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
/// 		_, err := ses.NewReceiptRuleSet(ctx, "main", &ses.ReceiptRuleSetArgs{
/// 			RuleSetName: pulumi.String("primary-rules"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.ReceiptRuleSet;
/// import com.pulumi.aws.ses.ReceiptRuleSetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var main = new ReceiptRuleSet("main", ReceiptRuleSetArgs.builder()
///             .ruleSetName("primary-rules")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ses:ReceiptRuleSet
///     properties:
///       ruleSetName: primary-rules
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SES receipt rule sets using the rule set name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptRuleSet:ReceiptRuleSet my_rule_set my_rule_set_name
/// ```
class ReceiptRuleSet extends pulumi.CustomResource {
  /// SES receipt rule set ARN.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the rule set.
  late final pulumi.Output<String> ruleSetName;

  /// Creates a new [ReceiptRuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReceiptRuleSet]. {@macro pulumi_ses_receipt_rule_set_receipt_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReceiptRuleSet(
    String name, {
    ReceiptRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRuleSet:ReceiptRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
  }

  /// Gets an existing [ReceiptRuleSet] resource's state with the given [name] and [id].
  static ReceiptRuleSet get(
    String name,
    pulumi.Input<String> id, {
    ReceiptRuleSetState? state,
  }) {
    return ReceiptRuleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReceiptRuleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRuleSet:ReceiptRuleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    ruleSetName = registerOutput<String>('ruleSetName');
  }
}
