import 'package:pulumi/pulumi.dart';
import '../retrohunt_execution_interval/retrohunt_execution_interval.dart';
import '../retrohunt_process_interval/retrohunt_process_interval.dart';
import 'retrohunt_args.dart';

/// Retrohunt is an execution of a Rule over a time range in the past.
///
///
/// To get more information about Retrohunt, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.rules.retrohunts)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Retrohunt Basic
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
/// deletionPolicy: "FORCE",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// const example = new gcp.chronicle.Retrohunt("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// rule: pulumi.all([std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }), std.split({
/// separator: "/",
/// text: googleChronicleRule["my-rule"].name,
/// }).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]),
/// processInterval: {
/// startTime: "2025-01-01T00:00:00Z",
/// endTime: "2025-01-01T12:00:00Z",
/// },
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
/// deletion_policy="FORCE",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// example = gcp.chronicle.Retrohunt("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// rule=len(std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result).apply(lambda length: std.split(separator="/",
/// text=google_chronicle_rule["my-rule"]["name"]).result[length - 1]),
/// process_interval={
/// "start_time": "2025-01-01T00:00:00Z",
/// "end_time": "2025-01-01T12:00:00Z",
/// })
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
/// DeletionPolicy = "FORCE",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// var example = new Gcp.Chronicle.Retrohunt("example", new()
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
/// ProcessInterval = new Gcp.Chronicle.Inputs.RetrohuntProcessIntervalArgs
/// {
/// StartTime = "2025-01-01T00:00:00Z",
/// EndTime = "2025-01-01T12:00:00Z",
/// },
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
/// DeletionPolicy: pulumi.String("FORCE"),
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
/// _, err = chronicle.NewRetrohunt(ctx, "example", &chronicle.RetrohuntArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Rule: pulumi.String(len(invokeSplit.Result).ApplyT(func(length int) (pulumi.Any, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.AnyOutput)),
/// ProcessInterval: &chronicle.RetrohuntProcessIntervalArgs{
/// StartTime: pulumi.String("2025-01-01T00:00:00Z"),
/// EndTime: pulumi.String("2025-01-01T12:00:00Z"),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
/// import com.pulumi.gcp.chronicle.Retrohunt;
/// import com.pulumi.gcp.chronicle.RetrohuntArgs;
/// import com.pulumi.gcp.chronicle.inputs.RetrohuntProcessIntervalArgs;
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
/// .deletionPolicy("FORCE")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// var example = new Retrohunt("example", RetrohuntArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .rule(StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result().length().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
/// .separator("/")
/// .text(googleChronicleRule.my-rule().name())
/// .build()).result()[_length - 1]))
/// .processInterval(RetrohuntProcessIntervalArgs.builder()
/// .startTime("2025-01-01T00:00:00Z")
/// .endTime("2025-01-01T12:00:00Z")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Retrohunt can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/retrohunts/{{retrohunt}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule}}/{{retrohunt}}`
///
/// * `{{location}}/{{instance}}/{{rule}}/{{retrohunt}}`
///
/// When using the `pulumi import` command, Retrohunt can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/retrohunts/{{retrohunt}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default {{project}}/{{location}}/{{instance}}/{{rule}}/{{retrohunt}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default {{location}}/{{instance}}/{{rule}}/{{retrohunt}}
/// ```
class Retrohunt extends CustomResource {
  /// The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  late final Output<String> retrohuntId;

  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  late final Output<List<RetrohuntExecutionInterval>> executionIntervals;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The resource name of the retrohunt.
  /// Retrohunt is the child of a rule revision. {rule} in the format below is
  /// structured as {rule_id@revision_id}.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/retrohunts/{retrohunt}
  late final Output<String> name;

  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  late final Output<RetrohuntProcessInterval> processInterval;

  /// Output only. Percent progress of the retrohunt towards completion, from 0.00 to 100.00.
  late final Output<double> progressPercentage;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Rule ID of the rule.
  late final Output<String> rule;

  /// Output only. The state of the retrohunt.
  /// Possible values:
  /// RUNNING
  /// DONE
  /// CANCELLED
  /// FAILED
  late final Output<String> state;

  Retrohunt(
    String name, {
    RetrohuntArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/retrohunt:Retrohunt',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.retrohuntId = registerOutput<String>('RetrohuntId');
    this.executionIntervals =
        registerOutput<List<RetrohuntExecutionInterval>>('executionIntervals');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.processInterval =
        registerOutput<RetrohuntProcessInterval>('processInterval');
    this.progressPercentage = registerOutput<double>('progressPercentage');
    this.project = registerOutput<String>('project');
    this.rule = registerOutput<String>('rule');
    this.state = registerOutput<String>('state');
  }
}
