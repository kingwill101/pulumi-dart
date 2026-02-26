import 'package:pulumi/pulumi.dart';
import 'contributor_managed_insight_rule_args.dart';

/// Resource for managing an AWS CloudWatch Contributor Managed Insight Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.ContributorManagedInsightRule("example", {
/// resourceArn: test.arn,
/// templateName: "VpcEndpointService-BytesByEndpointId-v1",
/// ruleState: "DISABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.ContributorManagedInsightRule("example",
/// resource_arn=test["arn"],
/// template_name="VpcEndpointService-BytesByEndpointId-v1",
/// rule_state="DISABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudWatch.ContributorManagedInsightRule("example", new()
/// {
/// ResourceArn = test.Arn,
/// TemplateName = "VpcEndpointService-BytesByEndpointId-v1",
/// RuleState = "DISABLED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewContributorManagedInsightRule(ctx, "example", &cloudwatch.ContributorManagedInsightRuleArgs{
/// ResourceArn:  pulumi.Any(test.Arn),
/// TemplateName: pulumi.String("VpcEndpointService-BytesByEndpointId-v1"),
/// RuleState:    "DISABLED",
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
/// import com.pulumi.aws.cloudwatch.ContributorManagedInsightRule;
/// import com.pulumi.aws.cloudwatch.ContributorManagedInsightRuleArgs;
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
/// var example = new ContributorManagedInsightRule("example", ContributorManagedInsightRuleArgs.builder()
/// .resourceArn(test.arn())
/// .templateName("VpcEndpointService-BytesByEndpointId-v1")
/// .ruleState("DISABLED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:ContributorManagedInsightRule
/// properties:
/// resourceArn: ${test.arn}
/// templateName: VpcEndpointService-BytesByEndpointId-v1
/// ruleState: DISABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Contributor Managed Insight Rule using the <span pulumi-lang-nodejs="`resourceArn`" pulumi-lang-dotnet="`ResourceArn`" pulumi-lang-go="`resourceArn`" pulumi-lang-python="`resource_arn`" pulumi-lang-yaml="`resourceArn`" pulumi-lang-java="`resourceArn`">`resource_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/contributorManagedInsightRule:ContributorManagedInsightRule example contributor_managed_insight_rule-id-12345678
/// ```
class ContributorManagedInsightRule extends CustomResource {
  /// ARN of the Contributor Managed Insight Rule.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  late final Output<String> resourceArn;
  late final Output<String> ruleName;
  late final Output<String> state;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  late final Output<String> templateName;

  ContributorManagedInsightRule(
    String name, {
    ContributorManagedInsightRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorManagedInsightRule:ContributorManagedInsightRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.ruleName = registerOutput<String>('ruleName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String>('templateName');
  }
}
