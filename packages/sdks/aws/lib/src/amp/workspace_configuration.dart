import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_configuration_args.dart';
import 'workspace_configuration_limits_per_label_set.dart';
import 'workspace_configuration_state.dart';
import 'workspace_configuration_timeouts.dart';

/// Manages an AWS Managed Service for Prometheus Workspace Configuration.
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
/// const example = new aws.amp.Workspace("example", {});
/// const exampleWorkspaceConfiguration = new aws.amp.WorkspaceConfiguration("example", {
///     limitsPerLabelSets: [
///         {
///             limits: {
///                 maxSeries: 100000,
///             },
///             labelSet: {
///                 env: "dev",
///             },
///         },
///         {
///             limits: {
///                 maxSeries: 400000,
///             },
///             labelSet: {
///                 env: "prod",
///             },
///         },
///     ],
///     workspaceId: example.id,
///     retentionPeriodInDays: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_workspace_configuration = aws.amp.WorkspaceConfiguration("example",
///     limits_per_label_sets=[
///         {
///             "limits": {
///                 "max_series": 100000,
///             },
///             "label_set": {
///                 "env": "dev",
///             },
///         },
///         {
///             "limits": {
///                 "max_series": 400000,
///             },
///             "label_set": {
///                 "env": "prod",
///             },
///         },
///     ],
///     workspace_id=example.id,
///     retention_period_in_days=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example");
///
///     var exampleWorkspaceConfiguration = new Aws.Amp.WorkspaceConfiguration("example", new()
///     {
///         LimitsPerLabelSets = new[]
///         {
///             new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
///             {
///                 Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
///                 {
///                     MaxSeries = 100000,
///                 },
///                 LabelSet =
///                 {
///                     { "env", "dev" },
///                 },
///             },
///             new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
///             {
///                 Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
///                 {
///                     MaxSeries = 400000,
///                 },
///                 LabelSet =
///                 {
///                     { "env", "prod" },
///                 },
///             },
///         },
///         WorkspaceId = example.Id,
///         RetentionPeriodInDays = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewWorkspaceConfiguration(ctx, "example", &amp.WorkspaceConfigurationArgs{
/// 			LimitsPerLabelSets: amp.WorkspaceConfigurationLimitsPerLabelSetArray{
/// 				&amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// 					Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// 						MaxSeries: pulumi.Int(100000),
/// 					},
/// 					LabelSet: pulumi.StringMap{
/// 						"env": pulumi.String("dev"),
/// 					},
/// 				},
/// 				&amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// 					Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// 						MaxSeries: pulumi.Int(400000),
/// 					},
/// 					LabelSet: pulumi.StringMap{
/// 						"env": pulumi.String("prod"),
/// 					},
/// 				},
/// 			},
/// 			WorkspaceId:           example.ID().ToIDOutput().ToStringOutput(),
/// 			RetentionPeriodInDays: pulumi.Int(60),
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
/// resource "aws_amp_workspace" "example" {
/// }
/// resource "aws_amp_workspaceconfiguration" "example" {
///   limits_per_label_sets {
///     limits = {
///       max_series = 100000
///     }
///     label_set = {
///       "env" = "dev"
///     }
///   }
///   limits_per_label_sets {
///     limits = {
///       max_series = 400000
///     }
///     label_set = {
///       "env" = "prod"
///     }
///   }
///   workspace_id             = aws_amp_workspace.example.id
///   retention_period_in_days = 60
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
///         var example = new Workspace("example");
///
///         var exampleWorkspaceConfiguration = new WorkspaceConfiguration("exampleWorkspaceConfiguration", WorkspaceConfigurationArgs.builder()
///             .limitsPerLabelSets(
///                 WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
///                     .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
///                         .maxSeries(100000)
///                         .build())
///                     .labelSet(Map.of("env", "dev"))
///                     .build(),
///                 WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
///                     .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
///                         .maxSeries(400000)
///                         .build())
///                     .labelSet(Map.of("env", "prod"))
///                     .build())
///             .workspaceId(example.id())
///             .retentionPeriodInDays(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///   exampleWorkspaceConfiguration:
///     type: aws:amp:WorkspaceConfiguration
///     name: example
///     properties:
///       limitsPerLabelSets:
///         - limits:
///             maxSeries: 100000
///           labelSet:
///             env: dev
///         - limits:
///             maxSeries: 400000
///           labelSet:
///             env: prod
///       workspaceId: ${example.id}
///       retentionPeriodInDays: 60
/// ```
///
///
/// ### Setting up default bucket
///
/// The default bucket limit is the maximum number of active time series that can be
/// ingested in the workspace, counting only time series that don’t match a defined
/// label set.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {});
/// const exampleWorkspaceConfiguration = new aws.amp.WorkspaceConfiguration("example", {
///     limitsPerLabelSets: [{
///         limits: {
///             maxSeries: 50000,
///         },
///         labelSet: {},
///     }],
///     workspaceId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_workspace_configuration = aws.amp.WorkspaceConfiguration("example",
///     limits_per_label_sets=[{
///         "limits": {
///             "max_series": 50000,
///         },
///         "label_set": {},
///     }],
///     workspace_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example");
///
///     var exampleWorkspaceConfiguration = new Aws.Amp.WorkspaceConfiguration("example", new()
///     {
///         LimitsPerLabelSets = new[]
///         {
///             new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetArgs
///             {
///                 Limits = new Aws.Amp.Inputs.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs
///                 {
///                     MaxSeries = 50000,
///                 },
///                 LabelSet = null,
///             },
///         },
///         WorkspaceId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewWorkspaceConfiguration(ctx, "example", &amp.WorkspaceConfigurationArgs{
/// 			LimitsPerLabelSets: amp.WorkspaceConfigurationLimitsPerLabelSetArray{
/// 				&amp.WorkspaceConfigurationLimitsPerLabelSetArgs{
/// 					Limits: &amp.WorkspaceConfigurationLimitsPerLabelSetLimitsArgs{
/// 						MaxSeries: pulumi.Int(50000),
/// 					},
/// 					LabelSet: pulumi.StringMap{},
/// 				},
/// 			},
/// 			WorkspaceId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_amp_workspace" "example" {
/// }
/// resource "aws_amp_workspaceconfiguration" "example" {
///   limits_per_label_sets {
///     limits = {
///       max_series = 50000
///     }
///     label_set = {}
///   }
///   workspace_id = aws_amp_workspace.example.id
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
///         var example = new Workspace("example");
///
///         var exampleWorkspaceConfiguration = new WorkspaceConfiguration("exampleWorkspaceConfiguration", WorkspaceConfigurationArgs.builder()
///             .limitsPerLabelSets(WorkspaceConfigurationLimitsPerLabelSetArgs.builder()
///                 .limits(WorkspaceConfigurationLimitsPerLabelSetLimitsArgs.builder()
///                     .maxSeries(50000)
///                     .build())
///                 .labelSet(Map.ofEntries(
///                 ))
///                 .build())
///             .workspaceId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///   exampleWorkspaceConfiguration:
///     type: aws:amp:WorkspaceConfiguration
///     name: example
///     properties:
///       limitsPerLabelSets:
///         - limits:
///             maxSeries: 50000
///           labelSet: {}
///       workspaceId: ${example.id}
/// ```
///
///
/// ### With out-of-order and rule query configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {});
/// const exampleWorkspaceConfiguration = new aws.amp.WorkspaceConfiguration("example", {
///     workspaceId: example.id,
///     retentionPeriodInDays: 30,
///     outOfOrderTimeWindowInSeconds: 120,
///     ruleQueryOffsetInSeconds: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_workspace_configuration = aws.amp.WorkspaceConfiguration("example",
///     workspace_id=example.id,
///     retention_period_in_days=30,
///     out_of_order_time_window_in_seconds=120,
///     rule_query_offset_in_seconds=300)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example");
///
///     var exampleWorkspaceConfiguration = new Aws.Amp.WorkspaceConfiguration("example", new()
///     {
///         WorkspaceId = example.Id,
///         RetentionPeriodInDays = 30,
///         OutOfOrderTimeWindowInSeconds = 120,
///         RuleQueryOffsetInSeconds = 300,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewWorkspaceConfiguration(ctx, "example", &amp.WorkspaceConfigurationArgs{
/// 			WorkspaceId:                   example.ID().ToIDOutput().ToStringOutput(),
/// 			RetentionPeriodInDays:         pulumi.Int(30),
/// 			OutOfOrderTimeWindowInSeconds: pulumi.Int(120),
/// 			RuleQueryOffsetInSeconds:      pulumi.Int(300),
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
/// resource "aws_amp_workspace" "example" {
/// }
/// resource "aws_amp_workspaceconfiguration" "example" {
///   workspace_id                        = aws_amp_workspace.example.id
///   retention_period_in_days            = 30
///   out_of_order_time_window_in_seconds = 120
///   rule_query_offset_in_seconds        = 300
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
///         var example = new Workspace("example");
///
///         var exampleWorkspaceConfiguration = new WorkspaceConfiguration("exampleWorkspaceConfiguration", WorkspaceConfigurationArgs.builder()
///             .workspaceId(example.id())
///             .retentionPeriodInDays(30)
///             .outOfOrderTimeWindowInSeconds(120)
///             .ruleQueryOffsetInSeconds(300)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///   exampleWorkspaceConfiguration:
///     type: aws:amp:WorkspaceConfiguration
///     name: example
///     properties:
///       workspaceId: ${example.id}
///       retentionPeriodInDays: 30
///       outOfOrderTimeWindowInSeconds: 120
///       ruleQueryOffsetInSeconds: 300
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AMP (Managed Prometheus) Workspace Configuration using the `workspaceId`. For example
///
/// ```sh
/// $ pulumi import aws:amp/workspaceConfiguration:WorkspaceConfiguration example ws-12345678-abcd-1234-abcd-123456789012
/// ```
class WorkspaceConfiguration extends pulumi.CustomResource {
  /// Configuration block for setting limits on metrics with specific label sets. Detailed below.
  late final pulumi.Output<List<WorkspaceConfigurationLimitsPerLabelSet>?> limitsPerLabelSets;
  /// Time window in seconds for accepting out-of-order samples. Must be between 0 and 600 seconds.
  late final pulumi.Output<int> outOfOrderTimeWindowInSeconds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of days to retain metric data in the workspace.
  late final pulumi.Output<int> retentionPeriodInDays;
  /// Query offset in seconds for rule evaluation. Must be between 0 and 86400 seconds.
  late final pulumi.Output<int> ruleQueryOffsetInSeconds;
  late final pulumi.Output<WorkspaceConfigurationTimeouts?> timeouts;
  /// ID of the workspace to configure.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceConfiguration]. {@macro pulumi_amp_workspace_configuration_workspace_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceConfiguration(
    String name, {
    WorkspaceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspaceConfiguration:WorkspaceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    limitsPerLabelSets = registerOutput<List<WorkspaceConfigurationLimitsPerLabelSet>?>('limitsPerLabelSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(guardedValue, (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap((value as Map).cast<String, dynamic>())); });
    outOfOrderTimeWindowInSeconds = registerOutput<int>('outOfOrderTimeWindowInSeconds');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    ruleQueryOffsetInSeconds = registerOutput<int>('ruleQueryOffsetInSeconds');
    timeouts = registerOutput<WorkspaceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceConfiguration] resource's state with the given [name] and [id].
  static WorkspaceConfiguration get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkspaceConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkspaceConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspaceConfiguration:WorkspaceConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    limitsPerLabelSets = registerOutput<List<WorkspaceConfigurationLimitsPerLabelSet>?>('limitsPerLabelSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(guardedValue, (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap((value as Map).cast<String, dynamic>())); });
    outOfOrderTimeWindowInSeconds = registerOutput<int>('outOfOrderTimeWindowInSeconds');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    ruleQueryOffsetInSeconds = registerOutput<int>('ruleQueryOffsetInSeconds');
    timeouts = registerOutput<WorkspaceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [WorkspaceConfiguration] resource.
  WorkspaceConfiguration.reference(String urn)
    : super(
        'aws:amp/workspaceConfiguration:WorkspaceConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    limitsPerLabelSets = registerOutput<List<WorkspaceConfigurationLimitsPerLabelSet>?>('limitsPerLabelSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceConfigurationLimitsPerLabelSet>(guardedValue, (value) => WorkspaceConfigurationLimitsPerLabelSet.fromMap((value as Map).cast<String, dynamic>())); });
    outOfOrderTimeWindowInSeconds = registerOutput<int>('outOfOrderTimeWindowInSeconds');
    region = registerOutput<String>('region');
    retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    ruleQueryOffsetInSeconds = registerOutput<int>('ruleQueryOffsetInSeconds');
    timeouts = registerOutput<WorkspaceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
