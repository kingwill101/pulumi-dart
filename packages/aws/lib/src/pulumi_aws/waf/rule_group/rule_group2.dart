import 'package:pulumi/pulumi.dart';
import '../rule_group_activated_rule/rule_group_activated_rule.dart';
import 'rule_group_args2.dart';

/// Provides a WAF Rule Group Resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.waf.Rule("example", {
/// name: "example",
/// metricName: "example",
/// });
/// const exampleRuleGroup = new aws.waf.RuleGroup("example", {
/// name: "example",
/// metricName: "example",
/// activatedRules: [{
/// action: {
/// type: "COUNT",
/// },
/// priority: 50,
/// ruleId: example.id,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.Rule("example",
/// name="example",
/// metric_name="example")
/// example_rule_group = aws.waf.RuleGroup("example",
/// name="example",
/// metric_name="example",
/// activated_rules=[{
/// "action": {
/// "type": "COUNT",
/// },
/// "priority": 50,
/// "rule_id": example.id,
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
/// var example = new Aws.Waf.Rule("example", new()
/// {
/// Name = "example",
/// MetricName = "example",
/// });
///
/// var exampleRuleGroup = new Aws.Waf.RuleGroup("example", new()
/// {
/// Name = "example",
/// MetricName = "example",
/// ActivatedRules = new[]
/// {
/// new Aws.Waf.Inputs.RuleGroupActivatedRuleArgs
/// {
/// Action = new Aws.Waf.Inputs.RuleGroupActivatedRuleActionArgs
/// {
/// Type = "COUNT",
/// },
/// Priority = 50,
/// RuleId = example.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := waf.NewRule(ctx, "example", &waf.RuleArgs{
/// Name:       pulumi.String("example"),
/// MetricName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = waf.NewRuleGroup(ctx, "example", &waf.RuleGroupArgs{
/// Name:       pulumi.String("example"),
/// MetricName: pulumi.String("example"),
/// ActivatedRules: waf.RuleGroupActivatedRuleArray{
/// &waf.RuleGroupActivatedRuleArgs{
/// Action: &waf.RuleGroupActivatedRuleActionArgs{
/// Type: pulumi.String("COUNT"),
/// },
/// Priority: pulumi.Int(50),
/// RuleId:   example.ID(),
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
/// import com.pulumi.aws.waf.Rule;
/// import com.pulumi.aws.waf.RuleArgs;
/// import com.pulumi.aws.waf.RuleGroup;
/// import com.pulumi.aws.waf.RuleGroupArgs;
/// import com.pulumi.aws.waf.inputs.RuleGroupActivatedRuleArgs;
/// import com.pulumi.aws.waf.inputs.RuleGroupActivatedRuleActionArgs;
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
/// var example = new Rule("example", RuleArgs.builder()
/// .name("example")
/// .metricName("example")
/// .build());
///
/// var exampleRuleGroup = new RuleGroup("exampleRuleGroup", RuleGroupArgs.builder()
/// .name("example")
/// .metricName("example")
/// .activatedRules(RuleGroupActivatedRuleArgs.builder()
/// .action(RuleGroupActivatedRuleActionArgs.builder()
/// .type("COUNT")
/// .build())
/// .priority(50)
/// .ruleId(example.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:waf:Rule
/// properties:
/// name: example
/// metricName: example
/// exampleRuleGroup:
/// type: aws:waf:RuleGroup
/// name: example
/// properties:
/// name: example
/// metricName: example
/// activatedRules:
/// - action:
/// type: COUNT
/// priority: 50
/// ruleId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Rule Group using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/ruleGroup:RuleGroup example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RuleGroup2 extends CustomResource {
  /// A list of activated rules, see below
  late final Output<List<RuleGroupActivatedRule>?> activatedRules;

  /// The ARN of the WAF rule group.
  late final Output<String> arn;

  /// A friendly name for the metrics from the rule group
  late final Output<String> metricName;

  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  RuleGroup2(
    String name, {
    RuleGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/ruleGroup:RuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedRules = Output.createUnknown<List<RuleGroupActivatedRule>?>();
    this.arn = Output.createUnknown<String>();
    this.metricName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
