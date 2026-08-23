import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_insight_rule_args.dart';
import 'contributor_insight_rule_state.dart';

/// Resource for managing an AWS CloudWatch Contributor Insight Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.ContributorInsightRule("test", {
///     ruleName: "testing",
///     ruleState: "ENABLED",
///     ruleDefinition: "{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.ContributorInsightRule("test",
///     rule_name="testing",
///     rule_state="ENABLED",
///     rule_definition="{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.ContributorInsightRule("test", new()
///     {
///         RuleName = "testing",
///         RuleState = "ENABLED",
///         RuleDefinition = "{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewContributorInsightRule(ctx, "test", &cloudwatch.ContributorInsightRuleArgs{
/// 			RuleName:       pulumi.String("testing"),
/// 			RuleState:      pulumi.String("ENABLED"),
/// 			RuleDefinition: pulumi.String("{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}"),
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
/// resource "aws_cloudwatch_contributorinsightrule" "test" {
///   rule_name       = "testing"
///   rule_state      = "ENABLED"
///   rule_definition = "{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}"
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
///         var test = new ContributorInsightRule("test", ContributorInsightRuleArgs.builder()
///             .ruleName("testing")
///             .ruleState("ENABLED")
///             .ruleDefinition("{\"Schema\":{\"Name\":\"CloudWatchLogRule\",\"Version\":1},\"AggregateOn\":\"Count\",\"Contribution\":{\"Filters\":[{\"In\":[\"some-keyword\"],\"Match\":\"$.message\"}],\"Keys\":[\"$.country\"]},\"LogFormat\":\"JSON\",\"LogGroupNames\":[\"/aws/lambda/api-prod\"]}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:ContributorInsightRule
///     properties:
///       ruleName: testing
///       ruleState: ENABLED
///       ruleDefinition: '{"Schema":{"Name":"CloudWatchLogRule","Version":1},"AggregateOn":"Count","Contribution":{"Filters":[{"In":["some-keyword"],"Match":"$.message"}],"Keys":["$.country"]},"LogFormat":"JSON","LogGroupNames":["/aws/lambda/api-prod"]}'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `ruleName` (String) Name of the rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Contributor Insight Rules using `ruleName`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/contributorInsightRule:ContributorInsightRule example example-rule
/// ```
class ContributorInsightRule extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Contributor Insight Rule.
  late final pulumi.Output<String> resourceArn;
  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  late final pulumi.Output<String> ruleDefinition;
  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleName;
  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  late final pulumi.Output<String> ruleState;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ContributorInsightRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContributorInsightRule]. {@macro pulumi_cloudwatch_contributor_insight_rule_contributor_insight_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContributorInsightRule(
    String name, {
    ContributorInsightRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorInsightRule:ContributorInsightRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    ruleDefinition = registerOutput<String>('ruleDefinition');
    ruleName = registerOutput<String>('ruleName');
    ruleState = registerOutput<String>('ruleState');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ContributorInsightRule] resource's state with the given [name] and [id].
  static ContributorInsightRule get(
    String name,
    pulumi.Input<String> id, {
    ContributorInsightRuleState? state,
  }) {
    return ContributorInsightRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContributorInsightRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorInsightRule:ContributorInsightRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    ruleDefinition = registerOutput<String>('ruleDefinition');
    ruleName = registerOutput<String>('ruleName');
    ruleState = registerOutput<String>('ruleState');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
