import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_subscription_args.dart';
import 'standards_subscription_state.dart';

/// Subscribes to a Security Hub standard.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const current = aws.getRegion({});
/// const cis = new aws.securityhub.StandardsSubscription("cis", {standardsArn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"}, {
///     dependsOn: [example],
/// });
/// const pci321 = new aws.securityhub.StandardsSubscription("pci_321", {standardsArn: current.then(current => `arn:aws:securityhub:${current.region}::standards/pci-dss/v/3.2.1`)}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// current = aws.get_region()
/// cis = aws.securityhub.StandardsSubscription("cis", standards_arn="arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// pci321 = aws.securityhub.StandardsSubscription("pci_321", standards_arn=f"arn:aws:securityhub:{current.region}::standards/pci-dss/v/3.2.1",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var current = Aws.GetRegion.Invoke();
///
///     var cis = new Aws.SecurityHub.StandardsSubscription("cis", new()
///     {
///         StandardsArn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var pci321 = new Aws.SecurityHub.StandardsSubscription("pci_321", new()
///     {
///         StandardsArn = $"arn:aws:securityhub:{current.Apply(getRegionResult => getRegionResult.Region)}::standards/pci-dss/v/3.2.1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewStandardsSubscription(ctx, "cis", &securityhub.StandardsSubscriptionArgs{
/// 			StandardsArn: pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewStandardsSubscription(ctx, "pci_321", &securityhub.StandardsSubscriptionArgs{
/// 			StandardsArn: pulumi.Sprintf("arn:aws:securityhub:%v::standards/pci-dss/v/3.2.1", current.Region),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_securityhub_account" "example" {
/// }
/// resource "aws_securityhub_standardssubscription" "cis" {
///   depends_on    = [aws_securityhub_account.example]
///   standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
/// }
/// resource "aws_securityhub_standardssubscription" "pci_321" {
///   depends_on    = [aws_securityhub_account.example]
///   standards_arn ="arn:aws:securityhub:${data.aws_getregion.current.region}::standards/pci-dss/v/3.2.1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.securityhub.StandardsSubscription;
/// import com.pulumi.aws.securityhub.StandardsSubscriptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var cis = new StandardsSubscription("cis", StandardsSubscriptionArgs.builder()
///             .standardsArn("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var pci321 = new StandardsSubscription("pci321", StandardsSubscriptionArgs.builder()
///             .standardsArn(String.format("arn:aws:securityhub:%s::standards/pci-dss/v/3.2.1", current.region()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   cis:
///     type: aws:securityhub:StandardsSubscription
///     properties:
///       standardsArn: arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///     options:
///       dependsOn:
///         - ${example}
///   pci321:
///     type: aws:securityhub:StandardsSubscription
///     name: pci_321
///     properties:
///       standardsArn: arn:aws:securityhub:${current.region}::standards/pci-dss/v/3.2.1
///     options:
///       dependsOn:
///         - ${example}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Security Hub finding aggregator ARN.
///
///
/// Using `pulumi import`, import Security Hub standards subscriptions using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription example arn:aws:securityhub:eu-west-1:123456789012:subscription/cis-aws-foundations-benchmark/v/1.2.0
/// ```
class StandardsSubscription extends pulumi.CustomResource {
  /// The ARN of a resource that represents your subscription to a supported standard.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of a standard - see below.
  ///
  /// Currently available standards (remember to replace `${var.partition}` and `${var.region}` as appropriate):
  ///
  /// | Name                                     | ARN                                                                                                          |
  /// |------------------------------------------|--------------------------------------------------------------------------------------------------------------|
  /// | AWS Foundational Security Best Practices | `arn:${var.partition}:securityhub:${var.region}::standards/aws-foundational-security-best-practices/v/1.0.0` |
  /// | AWS Resource Tagging Standard            | `arn:${var.partition}:securityhub:${var.region}::standards/aws-resource-tagging-standard/v/1.0.0`            |
  /// | CIS AWS Foundations Benchmark v1.2.0     | `arn:${var.partition}:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0`                           |
  /// | CIS AWS Foundations Benchmark v1.4.0     | `arn:${var.partition}:securityhub:${var.region}::standards/cis-aws-foundations-benchmark/v/1.4.0`            |
  /// | CIS AWS Foundations Benchmark v3.0.0     | `arn:${var.partition}:securityhub:${var.region}::standards/cis-aws-foundations-benchmark/v/3.0.0`            |
  /// | NIST SP 800-53 Rev. 5                    | `arn:${var.partition}:securityhub:${var.region}::standards/nist-800-53/v/5.0.0`                              |
  /// | NIST SP 800-171 Rev. 2                   | `arn:${var.partition}:securityhub:${var.region}::standards/nist-800-171/v/2.0.0`                             |
  /// | PCI DSS  v3.2.1                          | `arn:${var.partition}:securityhub:${var.region}::standards/pci-dss/v/3.2.1`                                  |
  /// | PCI DSS  v4.0.1                          | `arn:${var.partition}:securityhub:${var.region}::standards/pci-dss/v/4.0.1`                                  |
  late final pulumi.Output<String> standardsArn;

  /// Creates a new [StandardsSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandardsSubscription]. {@macro pulumi_securityhub_standards_subscription_standards_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandardsSubscription(
    String name, {
    StandardsSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsSubscription:StandardsSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    standardsArn = registerOutput<String>('standardsArn');
  }

  /// Gets an existing [StandardsSubscription] resource's state with the given [name] and [id].
  static StandardsSubscription get(
    String name,
    pulumi.Input<String> id, {
    StandardsSubscriptionState? state,
  }) {
    return StandardsSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StandardsSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsSubscription:StandardsSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    standardsArn = registerOutput<String>('standardsArn');
  }
}
