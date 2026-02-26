import 'package:pulumi/pulumi.dart';
import 'rule_group_namespace_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Rule Group Namespace
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const demo = new aws.amp.Workspace("demo", {});
/// const demoRuleGroupNamespace = new aws.amp.RuleGroupNamespace("demo", {
/// name: "rules",
/// workspaceId: demo.id,
/// data: `groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// demo = aws.amp.Workspace("demo")
/// demo_rule_group_namespace = aws.amp.RuleGroupNamespace("demo",
/// name="rules",
/// workspace_id=demo.id,
/// data="""groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var demo = new Aws.Amp.Workspace("demo");
///
/// var demoRuleGroupNamespace = new Aws.Amp.RuleGroupNamespace("demo", new()
/// {
/// Name = "rules",
/// WorkspaceId = demo.Id,
/// Data = @"groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// demo, err := amp.NewWorkspace(ctx, "demo", nil)
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewRuleGroupNamespace(ctx, "demo", &amp.RuleGroupNamespaceArgs{
/// Name:        pulumi.String("rules"),
/// WorkspaceId: demo.ID(),
/// Data: pulumi.String(`groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// `),
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.RuleGroupNamespace;
/// import com.pulumi.aws.amp.RuleGroupNamespaceArgs;
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
/// var demo = new Workspace("demo");
///
/// var demoRuleGroupNamespace = new RuleGroupNamespace("demoRuleGroupNamespace", RuleGroupNamespaceArgs.builder()
/// .name("rules")
/// .workspaceId(demo.id())
/// .data("""
/// groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// demo:
/// type: aws:amp:Workspace
/// demoRuleGroupNamespace:
/// type: aws:amp:RuleGroupNamespace
/// name: demo
/// properties:
/// name: rules
/// workspaceId: ${demo.id}
/// data: |
/// groups:
/// - name: test
/// rules:
/// - record: metric:recording_rule
/// expr: avg(rate(container_cpu_usage_seconds_total[5m]))
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the prometheus rule group namespace using the arn. For example:
///
/// ```sh
/// $ pulumi import aws:amp/ruleGroupNamespace:RuleGroupNamespace demo arn:aws:aps:us-west-2:123456789012:rulegroupsnamespace/IDstring/namespace_name
/// ```
class RuleGroupNamespace extends CustomResource {
  /// The ARN of the rule group namespace.
  late final Output<String> arn;

  /// the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  late final Output<String> data;

  /// The name of the rule group namespace.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the prometheus workspace the rule group namespace should be linked to.
  late final Output<String> workspaceId;

  RuleGroupNamespace(
    String name, {
    RuleGroupNamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/ruleGroupNamespace:RuleGroupNamespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.data = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.workspaceId = Output.createUnknown<String>();
  }
}
