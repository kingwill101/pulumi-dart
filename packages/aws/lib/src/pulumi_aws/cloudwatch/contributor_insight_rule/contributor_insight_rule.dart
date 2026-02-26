import 'package:pulumi/pulumi.dart';
import 'contributor_insight_rule_args.dart';

/// Resource for managing an AWS CloudWatch Contributor Insight Rule.
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
/// const test = new aws.cloudwatch.ContributorInsightRule("test", {
/// ruleName: "testing",
/// ruleState: "ENABLED",
/// ruleDefinition: "{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.ContributorInsightRule("test",
/// rule_name="testing",
/// rule_state="ENABLED",
/// rule_definition="{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.CloudWatch.ContributorInsightRule("test", new()
/// {
/// RuleName = "testing",
/// RuleState = "ENABLED",
/// RuleDefinition = "{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}",
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
/// _, err := cloudwatch.NewContributorInsightRule(ctx, "test", &cloudwatch.ContributorInsightRuleArgs{
/// RuleName:       pulumi.String("testing"),
/// RuleState:      pulumi.String("ENABLED"),
/// RuleDefinition: pulumi.String("{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}"),
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
/// import com.pulumi.aws.cloudwatch.ContributorInsightRule;
/// import com.pulumi.aws.cloudwatch.ContributorInsightRuleArgs;
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
/// var test = new ContributorInsightRule("test", ContributorInsightRuleArgs.builder()
/// .ruleName("testing")
/// .ruleState("ENABLED")
/// .ruleDefinition("{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:cloudwatch:ContributorInsightRule
/// properties:
/// ruleName: testing
/// ruleState: ENABLED
/// ruleDefinition: '{"Schema":{"Name":"CloudWatchLogRule","Version":1},"AggregateOn":"Count","Contribution":{"Filters":[{"In":["some-keyword"],"Match":"$.message"}],"Keys":["$.country"]},"LogFormat":"JSON","LogGroupNames":["/aws/lambda/api-prod"]}'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Contributor Insight Rule using the <span pulumi-lang-nodejs="`ruleName`" pulumi-lang-dotnet="`RuleName`" pulumi-lang-go="`ruleName`" pulumi-lang-python="`rule_name`" pulumi-lang-yaml="`ruleName`" pulumi-lang-java="`ruleName`">`rule_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/contributorInsightRule:ContributorInsightRule example contributor_insight_rule-name
/// ```
class ContributorInsightRule extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the Contributor Insight Rule.
  late final Output<String> resourceArn;

  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  late final Output<String> ruleDefinition;

  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  late final Output<String> ruleName;

  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  late final Output<String?> ruleState;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  ContributorInsightRule(
    String name, {
    ContributorInsightRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorInsightRule:ContributorInsightRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.ruleDefinition = Output.createUnknown<String>();
    this.ruleName = Output.createUnknown<String>();
    this.ruleState = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
