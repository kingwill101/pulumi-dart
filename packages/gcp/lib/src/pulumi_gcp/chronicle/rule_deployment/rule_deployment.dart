import 'package:pulumi/pulumi.dart';
import 'rule_deployment_args.dart';

/// The RuleDeployment resource represents the deployment state of a Rule.
///
///
/// To get more information about RuleDeployment, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/RuleDeployment)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Ruledeployment Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_rule = new gcp.chronicle.Rule("my-rule", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// const example = new gcp.chronicle.RuleDeployment("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// rule: pulumi.all([std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }), std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]),
/// enabled: true,
/// alerting: true,
/// archived: false,
/// runFrequency: "DAILY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_rule = gcp.chronicle.Rule("my-rule",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// example = gcp.chronicle.RuleDeployment("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// rule=len(std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result).apply(lambda length: std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result[length - 1]),
/// enabled=True,
/// alerting=True,
/// archived=False,
/// run_frequency="DAILY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_rule = new Gcp.Chronicle.Rule("my-rule", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// var example = new Gcp.Chronicle.RuleDeployment("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Rule = Output.Tuple(Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }), Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }).Apply(invoke => invoke.Result).Length).Apply(values =>
/// {
/// var invoke = values.Item1;
/// var length = values.Item2;
/// return invoke.Result[length - 1];
/// }),
/// Enabled = true,
/// Alerting = true,
/// Archived = false,
/// RunFrequency = "DAILY",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewRule(ctx, "my-rule", &chronicle.RuleArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Text: pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeSplit1, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewRuleDeployment(ctx, "example", &chronicle.RuleDeploymentArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Rule: pulumi.String(len(invokeSplit.Result).ApplyT(func(length int) (pulumi.Any, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.AnyOutput)),
/// Enabled: pulumi.Bool(true),
/// Alerting: pulumi.Bool(true),
/// Archived: pulumi.Bool(false),
/// RunFrequency: pulumi.String("DAILY"),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
/// import com.pulumi.gcp.chronicle.RuleDeployment;
/// import com.pulumi.gcp.chronicle.RuleDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
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
/// var my_rule = new Rule("my-rule", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// var example = new RuleDeployment("example", RuleDeploymentArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .rule(StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result().length().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result()[_length - 1]))
/// .enabled(true)
/// .alerting(true)
/// .archived(false)
/// .runFrequency("DAILY")
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Ruledeployment Disabled
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_rule = new gcp.chronicle.Rule("my-rule", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// const example = new gcp.chronicle.RuleDeployment("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// rule: pulumi.all([std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }), std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]),
/// enabled: false,
/// runFrequency: "LIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_rule = gcp.chronicle.Rule("my-rule",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// example = gcp.chronicle.RuleDeployment("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// rule=len(std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result).apply(lambda length: std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result[length - 1]),
/// enabled=False,
/// run_frequency="LIVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_rule = new Gcp.Chronicle.Rule("my-rule", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// var example = new Gcp.Chronicle.RuleDeployment("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Rule = Output.Tuple(Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }), Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }).Apply(invoke => invoke.Result).Length).Apply(values =>
/// {
/// var invoke = values.Item1;
/// var length = values.Item2;
/// return invoke.Result[length - 1];
/// }),
/// Enabled = false,
/// RunFrequency = "LIVE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewRule(ctx, "my-rule", &chronicle.RuleArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Text: pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeSplit1, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewRuleDeployment(ctx, "example", &chronicle.RuleDeploymentArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Rule: pulumi.String(len(invokeSplit.Result).ApplyT(func(length int) (pulumi.Any, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.AnyOutput)),
/// Enabled: pulumi.Bool(false),
/// RunFrequency: pulumi.String("LIVE"),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
/// import com.pulumi.gcp.chronicle.RuleDeployment;
/// import com.pulumi.gcp.chronicle.RuleDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
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
/// var my_rule = new Rule("my-rule", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// var example = new RuleDeployment("example", RuleDeploymentArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .rule(StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result().length().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result()[_length - 1]))
/// .enabled(false)
/// .runFrequency("LIVE")
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Ruledeployment Run Frequency Missing
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const my_rule = new gcp.chronicle.Rule("my-rule", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// const example = new gcp.chronicle.RuleDeployment("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// rule: pulumi.all([std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }), std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]),
/// enabled: true,
/// alerting: true,
/// archived: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_rule = gcp.chronicle.Rule("my-rule",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// example = gcp.chronicle.RuleDeployment("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// rule=len(std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result).apply(lambda length: std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result[length - 1]),
/// enabled=True,
/// alerting=True,
/// archived=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_rule = new Gcp.Chronicle.Rule("my-rule", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// var example = new Gcp.Chronicle.RuleDeployment("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Rule = Output.Tuple(Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }), Std.Split.Invoke(new()
/// {
/// Separator = "/",
/// Text = googleChronicleRule.My_rule.Name,
/// }).Apply(invoke => invoke.Result).Length).Apply(values =>
/// {
/// var invoke = values.Item1;
/// var length = values.Item2;
/// return invoke.Result[length - 1];
/// }),
/// Enabled = true,
/// Alerting = true,
/// Archived = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewRule(ctx, "my-rule", &chronicle.RuleArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Text: pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeSplit1, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: googleChronicleRule.MyRule.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewRuleDeployment(ctx, "example", &chronicle.RuleDeploymentArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Rule: pulumi.String(len(invokeSplit.Result).ApplyT(func(length int) (pulumi.Any, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.AnyOutput)),
/// Enabled: pulumi.Bool(true),
/// Alerting: pulumi.Bool(true),
/// Archived: pulumi.Bool(false),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
/// import com.pulumi.gcp.chronicle.RuleDeployment;
/// import com.pulumi.gcp.chronicle.RuleDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
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
/// var my_rule = new Rule("my-rule", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// var example = new RuleDeployment("example", RuleDeploymentArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .rule(StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result().length().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result()[_length - 1]))
/// .enabled(true)
/// .alerting(true)
/// .archived(false)
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RuleDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/deployment`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule}}`
///
/// * `{{location}}/{{instance}}/{{rule}}`
///
/// When using the `pulumi import` command, RuleDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/deployment
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default {{project}}/{{location}}/{{instance}}/{{rule}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default {{location}}/{{instance}}/{{rule}}
/// ```
class RuleDeployment extends CustomResource {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  late final Output<bool?> alerting;

  /// Output only. The timestamp when the rule deployment archive state was last set to true. If the rule deployment's current archive state is not set to true, the field will be empty.
  late final Output<String> archiveTime;

  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and<span pulumi-lang-nodejs=" runFrequency " pulumi-lang-dotnet=" RunFrequency " pulumi-lang-go=" runFrequency " pulumi-lang-python=" run_frequency " pulumi-lang-yaml=" runFrequency " pulumi-lang-java=" runFrequency "> run_frequency </span>cannot be
  /// updated.
  late final Output<bool?> archived;

  /// Output only. The names of the associated/chained consumer rules. Rules are considered
  /// consumers of this rule if their rule text explicitly filters on this rule's ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<List<String>> consumerRules;

  /// Whether the rule is currently deployed continuously against incoming data.
  late final Output<bool?> enabled;

  /// The execution state of the rule deployment.
  /// Possible values:
  /// DEFAULT
  /// LIMITED
  /// PAUSED
  late final Output<String> executionState;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// Output only. The timestamp when the rule deployment alert state was lastly changed. This is filled regardless of the current alert state.E.g. if the current alert status is false, this timestamp will be the timestamp when the alert status was changed to false.
  late final Output<String> lastAlertStatusChangeTime;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The resource name of the rule deployment.
  /// Note that RuleDeployment is a child of the overall Rule, not any individual
  /// revision, so the resource ID segment for the Rule resource must not
  /// reference a specific revision.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/deployment
  late final Output<String> name;

  /// Output only. The names of the associated/chained producer rules. Rules are considered
  /// producers for this rule if this rule explicitly filters on their ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<List<String>> producerRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Rule ID of the rule.
  late final Output<String> rule;

  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  late final Output<String?> runFrequency;

  RuleDeployment(
    String name, {
    RuleDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/ruleDeployment:RuleDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alerting = Output.createUnknown<bool?>();
    this.archiveTime = Output.createUnknown<String>();
    this.archived = Output.createUnknown<bool?>();
    this.consumerRules = Output.createUnknown<List<String>>();
    this.enabled = Output.createUnknown<bool?>();
    this.executionState = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.lastAlertStatusChangeTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.producerRules = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.rule = Output.createUnknown<String>();
    this.runFrequency = Output.createUnknown<String?>();
  }
}
