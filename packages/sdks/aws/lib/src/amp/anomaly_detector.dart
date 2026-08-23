import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detector_args.dart';
import 'anomaly_detector_configuration.dart';
import 'anomaly_detector_missing_data_action.dart';
import 'anomaly_detector_state.dart';
import 'anomaly_detector_timeouts.dart';

/// Manages an AWS AMP (Managed Prometheus) Anomaly Detector.
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
/// const exampleAnomalyDetector = new aws.amp.AnomalyDetector("example", {
///     alias: "example",
///     workspaceId: example.id,
///     configuration: {
///         randomCutForest: {
///             query: "avg(up)",
///         },
///     },
///     missingDataAction: {
///         skip: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_anomaly_detector = aws.amp.AnomalyDetector("example",
///     alias="example",
///     workspace_id=example.id,
///     configuration={
///         "random_cut_forest": {
///             "query": "avg(up)",
///         },
///     },
///     missing_data_action={
///         "skip": True,
///     })
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
///     var exampleAnomalyDetector = new Aws.Amp.AnomalyDetector("example", new()
///     {
///         Alias = "example",
///         WorkspaceId = example.Id,
///         Configuration = new Aws.Amp.Inputs.AnomalyDetectorConfigurationArgs
///         {
///             RandomCutForest = new Aws.Amp.Inputs.AnomalyDetectorConfigurationRandomCutForestArgs
///             {
///                 Query = "avg(up)",
///             },
///         },
///         MissingDataAction = new Aws.Amp.Inputs.AnomalyDetectorMissingDataActionArgs
///         {
///             Skip = true,
///         },
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
/// 		_, err = amp.NewAnomalyDetector(ctx, "example", &amp.AnomalyDetectorArgs{
/// 			Alias:       pulumi.String("example"),
/// 			WorkspaceId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Configuration: &amp.AnomalyDetectorConfigurationArgs{
/// 				RandomCutForest: &amp.AnomalyDetectorConfigurationRandomCutForestArgs{
/// 					Query: pulumi.String("avg(up)"),
/// 				},
/// 			},
/// 			MissingDataAction: &amp.AnomalyDetectorMissingDataActionArgs{
/// 				Skip: pulumi.Bool(true),
/// 			},
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
/// resource "aws_amp_anomalydetector" "example" {
///   alias        = "example"
///   workspace_id = aws_amp_workspace.example.id
///   configuration = {
///     random_cut_forest = {
///       query = "avg(up)"
///     }
///   }
///   missing_data_action = {
///     skip = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.AnomalyDetector;
/// import com.pulumi.aws.amp.AnomalyDetectorArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationRandomCutForestArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorMissingDataActionArgs;
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
///         var exampleAnomalyDetector = new AnomalyDetector("exampleAnomalyDetector", AnomalyDetectorArgs.builder()
///             .alias("example")
///             .workspaceId(example.id())
///             .configuration(AnomalyDetectorConfigurationArgs.builder()
///                 .randomCutForest(AnomalyDetectorConfigurationRandomCutForestArgs.builder()
///                     .query("avg(up)")
///                     .build())
///                 .build())
///             .missingDataAction(AnomalyDetectorMissingDataActionArgs.builder()
///                 .skip(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///   exampleAnomalyDetector:
///     type: aws:amp:AnomalyDetector
///     name: example
///     properties:
///       alias: example
///       workspaceId: ${example.id}
///       configuration:
///         randomCutForest:
///           query: avg(up)
///       missingDataAction:
///         skip: true
/// ```
///
///
/// ### With evaluation interval and labels
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {});
/// const exampleAnomalyDetector = new aws.amp.AnomalyDetector("example", {
///     alias: "example",
///     workspaceId: example.id,
///     evaluationIntervalInSeconds: 120,
///     labels: {
///         env: "production",
///         team: "platform",
///     },
///     configuration: {
///         randomCutForest: {
///             query: "avg(up)",
///             sampleSize: 256,
///             shingleSize: 4,
///             ignoreNearExpectedFromAbove: {
///                 ratio: 1.5,
///             },
///             ignoreNearExpectedFromBelow: {
///                 amount: 2,
///             },
///         },
///     },
///     missingDataAction: {
///         markAsAnomaly: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example")
/// example_anomaly_detector = aws.amp.AnomalyDetector("example",
///     alias="example",
///     workspace_id=example.id,
///     evaluation_interval_in_seconds=120,
///     labels={
///         "env": "production",
///         "team": "platform",
///     },
///     configuration={
///         "random_cut_forest": {
///             "query": "avg(up)",
///             "sample_size": 256,
///             "shingle_size": 4,
///             "ignore_near_expected_from_above": {
///                 "ratio": 1.5,
///             },
///             "ignore_near_expected_from_below": {
///                 "amount": float(2),
///             },
///         },
///     },
///     missing_data_action={
///         "mark_as_anomaly": True,
///     })
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
///     var exampleAnomalyDetector = new Aws.Amp.AnomalyDetector("example", new()
///     {
///         Alias = "example",
///         WorkspaceId = example.Id,
///         EvaluationIntervalInSeconds = 120,
///         Labels =
///         {
///             { "env", "production" },
///             { "team", "platform" },
///         },
///         Configuration = new Aws.Amp.Inputs.AnomalyDetectorConfigurationArgs
///         {
///             RandomCutForest = new Aws.Amp.Inputs.AnomalyDetectorConfigurationRandomCutForestArgs
///             {
///                 Query = "avg(up)",
///                 SampleSize = 256,
///                 ShingleSize = 4,
///                 IgnoreNearExpectedFromAbove = new Aws.Amp.Inputs.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveArgs
///                 {
///                     Ratio = 1.5,
///                 },
///                 IgnoreNearExpectedFromBelow = new Aws.Amp.Inputs.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowArgs
///                 {
///                     Amount = 2,
///                 },
///             },
///         },
///         MissingDataAction = new Aws.Amp.Inputs.AnomalyDetectorMissingDataActionArgs
///         {
///             MarkAsAnomaly = true,
///         },
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
/// 		_, err = amp.NewAnomalyDetector(ctx, "example", &amp.AnomalyDetectorArgs{
/// 			Alias:                       pulumi.String("example"),
/// 			WorkspaceId:                 example.ID().ToIDOutput().ToStringOutput(),
/// 			EvaluationIntervalInSeconds: pulumi.Int(120),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("production"),
/// 				"team": pulumi.String("platform"),
/// 			},
/// 			Configuration: &amp.AnomalyDetectorConfigurationArgs{
/// 				RandomCutForest: &amp.AnomalyDetectorConfigurationRandomCutForestArgs{
/// 					Query:       pulumi.String("avg(up)"),
/// 					SampleSize:  pulumi.Int(256),
/// 					ShingleSize: pulumi.Int(4),
/// 					IgnoreNearExpectedFromAbove: &amp.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveArgs{
/// 						Ratio: pulumi.Float64(1.5),
/// 					},
/// 					IgnoreNearExpectedFromBelow: &amp.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowArgs{
/// 						Amount: pulumi.Float64(2),
/// 					},
/// 				},
/// 			},
/// 			MissingDataAction: &amp.AnomalyDetectorMissingDataActionArgs{
/// 				MarkAsAnomaly: pulumi.Bool(true),
/// 			},
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
/// resource "aws_amp_anomalydetector" "example" {
///   alias                          = "example"
///   workspace_id                   = aws_amp_workspace.example.id
///   evaluation_interval_in_seconds = 120
///   labels = {
///     "env"  = "production"
///     "team" = "platform"
///   }
///   configuration = {
///     random_cut_forest = {
///       query        = "avg(up)"
///       sample_size  = 256
///       shingle_size = 4
///       ignore_near_expected_from_above = {
///         ratio = 1.5
///       }
///       ignore_near_expected_from_below = {
///         amount = 2
///       }
///     }
///   }
///   missing_data_action = {
///     mark_as_anomaly = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.AnomalyDetector;
/// import com.pulumi.aws.amp.AnomalyDetectorArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationRandomCutForestArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowArgs;
/// import com.pulumi.aws.amp.inputs.AnomalyDetectorMissingDataActionArgs;
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
///         var exampleAnomalyDetector = new AnomalyDetector("exampleAnomalyDetector", AnomalyDetectorArgs.builder()
///             .alias("example")
///             .workspaceId(example.id())
///             .evaluationIntervalInSeconds(120)
///             .labels(Map.ofEntries(
///                 Map.entry("env", "production"),
///                 Map.entry("team", "platform")
///             ))
///             .configuration(AnomalyDetectorConfigurationArgs.builder()
///                 .randomCutForest(AnomalyDetectorConfigurationRandomCutForestArgs.builder()
///                     .query("avg(up)")
///                     .sampleSize(256)
///                     .shingleSize(4)
///                     .ignoreNearExpectedFromAbove(AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAboveArgs.builder()
///                         .ratio(1.5)
///                         .build())
///                     .ignoreNearExpectedFromBelow(AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelowArgs.builder()
///                         .amount(2.0)
///                         .build())
///                     .build())
///                 .build())
///             .missingDataAction(AnomalyDetectorMissingDataActionArgs.builder()
///                 .markAsAnomaly(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///   exampleAnomalyDetector:
///     type: aws:amp:AnomalyDetector
///     name: example
///     properties:
///       alias: example
///       workspaceId: ${example.id}
///       evaluationIntervalInSeconds: 120
///       labels:
///         env: production
///         team: platform
///       configuration:
///         randomCutForest:
///           query: avg(up)
///           sampleSize: 256
///           shingleSize: 4
///           ignoreNearExpectedFromAbove:
///             ratio: 1.5
///           ignoreNearExpectedFromBelow:
///             amount: 2
///       missingDataAction:
///         markAsAnomaly: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Anomaly Detector.
/// * `workspaceId` - (String) ID of the AMP workspace containing the Anomaly Detector.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AMP (Managed Prometheus) Anomaly Detector using a comma-delimited string combining `id` and `workspaceId`. For example:
///
/// ```sh
/// $ pulumi import aws:amp/anomalyDetector:AnomalyDetector example ad-12345678-abcd-1234-abcd-123456789012,ws-12345678-abcd-1234-abcd-123456789012
/// ```
class AnomalyDetector extends pulumi.CustomResource {
  /// Name of the anomaly detector.
  late final pulumi.Output<String> alias;
  /// ARN of the Anomaly Detector.
  late final pulumi.Output<String> arn;
  /// Configuration block for the anomaly detector algorithm. See `configuration` below.
  late final pulumi.Output<AnomalyDetectorConfiguration> configuration;
  /// RFC3339 timestamp of when the anomaly detector was created.
  late final pulumi.Output<String> createdAt;
  /// Interval in seconds at which the anomaly detector evaluates data.
  late final pulumi.Output<int> evaluationIntervalInSeconds;
  /// Map of label key-value pairs used to scope the anomaly detector to specific time series.
  late final pulumi.Output<Map<String, String>> labels;
  /// Configuration block for the action to take when data is missing. See `missingDataAction` below.
  late final pulumi.Output<AnomalyDetectorMissingDataAction> missingDataAction;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AnomalyDetectorTimeouts?> timeouts;
  /// ID of the AMP workspace in which to create the anomaly detector.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [AnomalyDetector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnomalyDetector]. {@macro pulumi_amp_anomaly_detector_anomaly_detector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnomalyDetector(
    String name, {
    AnomalyDetectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/anomalyDetector:AnomalyDetector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    configuration = registerOutput<AnomalyDetectorConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    evaluationIntervalInSeconds = registerOutput<int>('evaluationIntervalInSeconds');
    labels = registerOutput<Map<String, String>>('labels');
    missingDataAction = registerOutput<AnomalyDetectorMissingDataAction>('missingDataAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorMissingDataAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AnomalyDetectorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [AnomalyDetector] resource's state with the given [name] and [id].
  static AnomalyDetector get(
    String name,
    pulumi.Input<String> id, {
    AnomalyDetectorState? state,
  }) {
    return AnomalyDetector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnomalyDetector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/anomalyDetector:AnomalyDetector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    configuration = registerOutput<AnomalyDetectorConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    evaluationIntervalInSeconds = registerOutput<int>('evaluationIntervalInSeconds');
    labels = registerOutput<Map<String, String>>('labels');
    missingDataAction = registerOutput<AnomalyDetectorMissingDataAction>('missingDataAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorMissingDataAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AnomalyDetectorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalyDetectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
