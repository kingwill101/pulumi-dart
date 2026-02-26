import 'package:pulumi/pulumi.dart';
import '../workspace_configuration_limits_per_label_set/workspace_configuration_limits_per_label_set.dart';
import '../workspace_configuration_timeouts/workspace_configuration_timeouts.dart';
import 'workspace_configuration_args.dart';

/// Manages an AWS Managed Service for Prometheus Workspace Configuration.
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
/// const example = new aws.amp.Workspace("example", {});
/// const exampleWorkspaceConfiguration = new aws.amp.WorkspaceConfiguration("example", {
/// workspaceId: example.id,
/// retentionPeriodInDays: 60,
/// limitsPerLabelSets: [
/// {
/// labelSet: {
/// env: "dev",
/// },
/// limits: {
/// maxSeries: 100000,
/// },
/// },
/// {
/// labelSet: {
/// env: "prod",
/// },
/// limits: {
/// maxSeries: 400000,
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_workspace_configuration = aws.amp.WorkspaceConfiguration("example",
/// workspace_id=example.id,
/// retention_period_in_days=60,
/// limits_per_label_sets=[
/// {
/// "label_set": {
/// "env": "dev",
/// },
/// "limits": {
/// "max_series": 100000,
/// },
/// },
/// {
/// "label_set": {
/// "env": "prod",
/// },
/// "limits": {
/// "max_series": 400000,
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Amp.Workspace("example");
///
/// var exampleWorkspaceConfiguration = new Aws.Amp.WorkspaceConfiguration("example", new()
/// {
/// WorkspaceId = example.Id,
/// RetentionPeriodInDays = 60,
/// LimitsPerLabelSets = new[]
/// {
/// new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
/// {
/// LabelSet =
/// {
/// { "env", "dev" },
/// },
/// Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
/// {
/// MaxSeries = 100000,
/// },
/// },
/// new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
/// {
/// LabelSet =
/// {
/// { "env", "prod" },
/// },
/// Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
/// {
/// MaxSeries = 400000,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := amp.NewWorkspace(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewWorkspaceConfiguration(ctx, "example", &amp.WorkspaceConfigurationArgs{
/// WorkspaceId:           example.ID(),
/// RetentionPeriodInDays: pulumi.Int(60),
/// LimitsPerLabelSets: amp.WorkspaceConfigurationLimitsPerLabelSetArray{
/// &amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// LabelSet: pulumi.StringMap{
/// "env": pulumi.String("dev"),
/// },
/// Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// MaxSeries: pulumi.Int(100000),
/// },
/// },
/// &amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// LabelSet: pulumi.StringMap{
/// "env": pulumi.String("prod"),
/// },
/// Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// MaxSeries: pulumi.Int(400000),
/// },
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceConfiguration;
/// import com.pulumi.aws.amp.WorkspaceConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceConfigurationLimitsPerLabelSetArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs;
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
/// var example = new Workspace("example");
///
/// var exampleWorkspaceConfiguration = new WorkspaceConfiguration("exampleWorkspaceConfiguration", WorkspaceConfigurationArgs.builder()
/// .workspaceId(example.id())
/// .retentionPeriodInDays(60)
/// .limitsPerLabelSets(
/// WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
/// .labelSet(Map.of("env", "dev"))
/// .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
/// .maxSeries(100000)
/// .build())
/// .build(),
/// WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
/// .labelSet(Map.of("env", "prod"))
/// .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
/// .maxSeries(400000)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amp:Workspace
/// exampleWorkspaceConfiguration:
/// type: aws:amp:WorkspaceConfiguration
/// name: example
/// properties:
/// workspaceId: ${example.id}
/// retentionPeriodInDays: 60
/// limitsPerLabelSets:
/// - labelSet:
/// env: dev
/// limits:
/// maxSeries: 100000
/// - labelSet:
/// env: prod
/// limits:
/// maxSeries: 400000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Setting up default bucket
///
/// The default bucket limit is the maximum number of active time series that can be
/// ingested in the workspace, counting only time series that don’t match a defined
/// label set.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {});
/// const exampleWorkspaceConfiguration = new aws.amp.WorkspaceConfiguration("example", {
/// workspaceId: example.id,
/// limitsPerLabelSets: [{
/// labelSet: {},
/// limits: {
/// maxSeries: 50000,
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_workspace_configuration = aws.amp.WorkspaceConfiguration("example",
/// workspace_id=example.id,
/// limits_per_label_sets=[{
/// "label_set": {},
/// "limits": {
/// "max_series": 50000,
/// },
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
/// var example = new Aws.Amp.Workspace("example");
///
/// var exampleWorkspaceConfiguration = new Aws.Amp.WorkspaceConfiguration("example", new()
/// {
/// WorkspaceId = example.Id,
/// LimitsPerLabelSets = new[]
/// {
/// new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
/// {
/// LabelSet = null,
/// Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
/// {
/// MaxSeries = 50000,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := amp.NewWorkspace(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewWorkspaceConfiguration(ctx, "example", &amp.WorkspaceConfigurationArgs{
/// WorkspaceId: example.ID(),
/// LimitsPerLabelSets: amp.WorkspaceConfigurationLimitsPerLabelSetArray{
/// &amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// LabelSet: pulumi.StringMap{},
/// Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// MaxSeries: pulumi.Int(50000),
/// },
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceConfiguration;
/// import com.pulumi.aws.amp.WorkspaceConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceConfigurationLimitsPerLabelSetArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs;
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
/// var example = new Workspace("example");
///
/// var exampleWorkspaceConfiguration = new WorkspaceConfiguration("exampleWorkspaceConfiguration", WorkspaceConfigurationArgs.builder()
/// .workspaceId(example.id())
/// .limitsPerLabelSets(WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
/// .labelSet(Map.ofEntries(
/// ))
/// .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
/// .maxSeries(50000)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amp:Workspace
/// exampleWorkspaceConfiguration:
/// type: aws:amp:WorkspaceConfiguration
/// name: example
/// properties:
/// workspaceId: ${example.id}
/// limitsPerLabelSets:
/// - labelSet: {}
/// limits:
/// maxSeries: 50000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AMP (Managed Prometheus) Workspace Configuration using the <span pulumi-lang-nodejs="`workspaceId`" pulumi-lang-dotnet="`WorkspaceId`" pulumi-lang-go="`workspaceId`" pulumi-lang-python="`workspace_id`" pulumi-lang-yaml="`workspaceId`" pulumi-lang-java="`workspaceId`">`workspace_id`</span>. For example
///
/// ```sh
/// $ pulumi import aws:amp/workspaceConfiguration:WorkspaceConfiguration example ws-12345678-abcd-1234-abcd-123456789012
/// ```
class WorkspaceConfiguration extends CustomResource {
  /// Configuration block for setting limits on metrics with specific label sets. Detailed below.
  late final Output<List<WorkspaceConfigurationLimitsPerLabelSet>?>
      limitsPerLabelSets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Number of days to retain metric data in the workspace.
  late final Output<int> retentionPeriodInDays;
  late final Output<WorkspaceConfigurationTimeouts?> timeouts;

  /// ID of the workspace to configure.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  WorkspaceConfiguration(
    String name, {
    WorkspaceConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspaceConfiguration:WorkspaceConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.limitsPerLabelSets =
        registerOutput<List<WorkspaceConfigurationLimitsPerLabelSet>?>(
            'limitsPerLabelSets');
    this.region = registerOutput<String>('region');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    this.timeouts = registerOutput<WorkspaceConfigurationTimeouts?>('timeouts');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
