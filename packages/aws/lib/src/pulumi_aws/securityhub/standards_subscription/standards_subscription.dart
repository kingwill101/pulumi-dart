import 'package:pulumi/pulumi.dart';
import 'standards_subscription_args.dart';

/// Subscribes to a Security Hub standard.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const current = aws.getRegion({});
/// const cis = new aws.securityhub.StandardsSubscription("cis", {standardsArn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"}, {
/// dependsOn: [example],
/// });
/// const pci321 = new aws.securityhub.StandardsSubscription("pci_321", {standardsArn: current.then(current => `arn:aws:securityhub:${current.region}::standards/pci-dss/v/3.2.1`)}, {
/// dependsOn: [example],
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
/// var example = new Aws.SecurityHub.Account("example");
///
/// var current = Aws.GetRegion.Invoke();
///
/// var cis = new Aws.SecurityHub.StandardsSubscription("cis", new()
/// {
/// StandardsArn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// var pci321 = new Aws.SecurityHub.StandardsSubscription("pci_321", new()
/// {
/// StandardsArn = $"arn:aws:securityhub:{current.Apply(getRegionResult => getRegionResult.Region)}::standards/pci-dss/v/3.2.1",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewStandardsSubscription(ctx, "cis", &securityhub.StandardsSubscriptionArgs{
/// StandardsArn: pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewStandardsSubscription(ctx, "pci_321", &securityhub.StandardsSubscriptionArgs{
/// StandardsArn: pulumi.Sprintf("arn:aws:securityhub:%v::standards/pci-dss/v/3.2.1", current.Region),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.securityhub.StandardsSubscription;
/// import com.pulumi.aws.securityhub.StandardsSubscriptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var cis = new StandardsSubscription("cis", StandardsSubscriptionArgs.builder()
/// .standardsArn("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// var pci321 = new StandardsSubscription("pci321", StandardsSubscriptionArgs.builder()
/// .standardsArn(String.format("arn:aws:securityhub:%s::standards/pci-dss/v/3.2.1", current.region()))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// cis:
/// type: aws:securityhub:StandardsSubscription
/// properties:
/// standardsArn: arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
/// options:
/// dependsOn:
/// - ${example}
/// pci321:
/// type: aws:securityhub:StandardsSubscription
/// name: pci_321
/// properties:
/// standardsArn: arn:aws:securityhub:${current.region}::standards/pci-dss/v/3.2.1
/// options:
/// dependsOn:
/// - ${example}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub standards subscriptions using the standards subscription ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription cis arn:aws:securityhub:eu-west-1:123456789012:subscription/cis-aws-foundations-benchmark/v/1.2.0
/// ```
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription pci_321 arn:aws:securityhub:eu-west-1:123456789012:subscription/pci-dss/v/3.2.1
/// ```
///
/// ```sh
/// $ pulumi import aws:securityhub/standardsSubscription:StandardsSubscription nist_800_53_rev_5 arn:aws:securityhub:eu-west-1:123456789012:subscription/nist-800-53/v/5.0.0
/// ```
class StandardsSubscription extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

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
  late final Output<String> standardsArn;

  StandardsSubscription(
    String name, {
    StandardsSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsSubscription:StandardsSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.standardsArn = registerOutput<String>('standardsArn');
  }
}
