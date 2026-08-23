import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_args.dart';
import 'launch_scheduled_splits_config.dart';
import 'launch_state.dart';

/// Provides a CloudWatch Evidently Launch resource.
///
/// &gt; **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     groups: [{
///         feature: exampleAwsEvidentlyFeature.name,
///         name: "Variation1",
///         variation: "Variation1",
///     }],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///             },
///             startTime: "2024-01-07 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     groups=[{
///         "feature": example_aws_evidently_feature["name"],
///         "name": "Variation1",
///         "variation": "Variation1",
///     }],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///             },
///             "start_time": "2024-01-07 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name    = "example"
///   project = exampleAwsEvidentlyProject.name
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .groups(LaunchGroupArgs.builder()
///                 .feature(exampleAwsEvidentlyFeature.name())
///                 .name("Variation1")
///                 .variation("Variation1")
///                 .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.of("Variation1", 0))
///                     .startTime("2024-01-07 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///             startTime: 2024-01-07 01:43:59+00:00
/// ```
///
///
/// ### With description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     description: "example description",
///     groups: [{
///         feature: exampleAwsEvidentlyFeature.name,
///         name: "Variation1",
///         variation: "Variation1",
///     }],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///             },
///             startTime: "2024-01-07 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     description="example description",
///     groups=[{
///         "feature": example_aws_evidently_feature["name"],
///         "name": "Variation1",
///         "variation": "Variation1",
///     }],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///             },
///             "start_time": "2024-01-07 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Description = "example description",
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:        pulumi.String("example"),
/// 			Project:     pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Description: pulumi.String("example description"),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name        = "example"
///   project     = exampleAwsEvidentlyProject.name
///   description = "example description"
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .description("example description")
///             .groups(LaunchGroupArgs.builder()
///                 .feature(exampleAwsEvidentlyFeature.name())
///                 .name("Variation1")
///                 .variation("Variation1")
///                 .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.of("Variation1", 0))
///                     .startTime("2024-01-07 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       description: example description
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///             startTime: 2024-01-07 01:43:59+00:00
/// ```
///
///
/// ### With multiple groups
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     groups: [
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation1",
///             variation: "Variation1",
///             description: "first-group",
///         },
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation2",
///             variation: "Variation2",
///             description: "second-group",
///         },
///     ],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///                 Variation2: 0,
///             },
///             startTime: "2024-01-07 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     groups=[
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation1",
///             "variation": "Variation1",
///             "description": "first-group",
///         },
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation2",
///             "variation": "Variation2",
///             "description": "second-group",
///         },
///     ],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///                 "Variation2": 0,
///             },
///             "start_time": "2024-01-07 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///                 Description = "first-group",
///             },
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation2",
///                 Variation = "Variation2",
///                 Description = "second-group",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                         { "Variation2", 0 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:     pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:        pulumi.String("Variation1"),
/// 					Variation:   pulumi.String("Variation1"),
/// 					Description: pulumi.String("first-group"),
/// 				},
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:     pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:        pulumi.String("Variation2"),
/// 					Variation:   pulumi.String("Variation2"),
/// 					Description: pulumi.String("second-group"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 							"Variation2": pulumi.Int(0),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name    = "example"
///   project = exampleAwsEvidentlyProject.name
///   groups {
///     feature     = exampleAwsEvidentlyFeature.name
///     name        = "Variation1"
///     variation   = "Variation1"
///     description = "first-group"
///   }
///   groups {
///     feature     = exampleAwsEvidentlyFeature.name
///     name        = "Variation2"
///     variation   = "Variation2"
///     description = "second-group"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///         "Variation2" = 0
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .groups(
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation1")
///                     .variation("Variation1")
///                     .description("first-group")
///                     .build(),
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation2")
///                     .variation("Variation2")
///                     .description("second-group")
///                     .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.ofEntries(
///                         Map.entry("Variation1", 0),
///                         Map.entry("Variation2", 0)
///                     ))
///                     .startTime("2024-01-07 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///           description: first-group
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation2
///           variation: Variation2
///           description: second-group
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///               Variation2: 0
///             startTime: 2024-01-07 01:43:59+00:00
/// ```
///
///
/// ### With metricMonitors
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     groups: [{
///         feature: exampleAwsEvidentlyFeature.name,
///         name: "Variation1",
///         variation: "Variation1",
///     }],
///     metricMonitors: [
///         {
///             metricDefinition: {
///                 entityIdKey: "entity_id_key1",
///                 eventPattern: "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
///                 name: "name1",
///                 unitLabel: "unit_label1",
///                 valueKey: "value_key1",
///             },
///         },
///         {
///             metricDefinition: {
///                 entityIdKey: "entity_id_key2",
///                 eventPattern: "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
///                 name: "name2",
///                 unitLabel: "unit_label2",
///                 valueKey: "value_key2",
///             },
///         },
///     ],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///             },
///             startTime: "2024-01-07 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     groups=[{
///         "feature": example_aws_evidently_feature["name"],
///         "name": "Variation1",
///         "variation": "Variation1",
///     }],
///     metric_monitors=[
///         {
///             "metric_definition": {
///                 "entity_id_key": "entity_id_key1",
///                 "event_pattern": "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
///                 "name": "name1",
///                 "unit_label": "unit_label1",
///                 "value_key": "value_key1",
///             },
///         },
///         {
///             "metric_definition": {
///                 "entity_id_key": "entity_id_key2",
///                 "event_pattern": "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
///                 "name": "name2",
///                 "unit_label": "unit_label2",
///                 "value_key": "value_key2",
///             },
///         },
///     ],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///             },
///             "start_time": "2024-01-07 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///         },
///         MetricMonitors = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchMetricMonitorArgs
///             {
///                 MetricDefinition = new Aws.Evidently.Inputs.LaunchMetricMonitorMetricDefinitionArgs
///                 {
///                     EntityIdKey = "entity_id_key1",
///                     EventPattern = "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}",
///                     Name = "name1",
///                     UnitLabel = "unit_label1",
///                     ValueKey = "value_key1",
///                 },
///             },
///             new Aws.Evidently.Inputs.LaunchMetricMonitorArgs
///             {
///                 MetricDefinition = new Aws.Evidently.Inputs.LaunchMetricMonitorMetricDefinitionArgs
///                 {
///                     EntityIdKey = "entity_id_key2",
///                     EventPattern = "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}",
///                     Name = "name2",
///                     UnitLabel = "unit_label2",
///                     ValueKey = "value_key2",
///                 },
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 			},
/// 			MetricMonitors: evidently.LaunchMetricMonitorArray{
/// 				&evidently.LaunchMetricMonitorArgs{
/// 					MetricDefinition: &evidently.LaunchMetricMonitorMetricDefinitionArgs{
/// 						EntityIdKey:  pulumi.String("entity_id_key1"),
/// 						EventPattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}"),
/// 						Name:         pulumi.String("name1"),
/// 						UnitLabel:    pulumi.String("unit_label1"),
/// 						ValueKey:     pulumi.String("value_key1"),
/// 					},
/// 				},
/// 				&evidently.LaunchMetricMonitorArgs{
/// 					MetricDefinition: &evidently.LaunchMetricMonitorMetricDefinitionArgs{
/// 						EntityIdKey:  pulumi.String("entity_id_key2"),
/// 						EventPattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}"),
/// 						Name:         pulumi.String("name2"),
/// 						UnitLabel:    pulumi.String("unit_label2"),
/// 						ValueKey:     pulumi.String("value_key2"),
/// 					},
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name    = "example"
///   project = exampleAwsEvidentlyProject.name
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   metric_monitors {
///     metric_definition = {
///       entity_id_key = "entity_id_key1"
///       event_pattern = "{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}"
///       name          = "name1"
///       unit_label    = "unit_label1"
///       value_key     = "value_key1"
///     }
///   }
///   metric_monitors {
///     metric_definition = {
///       entity_id_key = "entity_id_key2"
///       event_pattern = "{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}"
///       name          = "name2"
///       unit_label    = "unit_label2"
///       value_key     = "value_key2"
///     }
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchMetricMonitorArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchMetricMonitorMetricDefinitionArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .groups(LaunchGroupArgs.builder()
///                 .feature(exampleAwsEvidentlyFeature.name())
///                 .name("Variation1")
///                 .variation("Variation1")
///                 .build())
///             .metricMonitors(
///                 LaunchMetricMonitorArgs.builder()
///                     .metricDefinition(LaunchMetricMonitorMetricDefinitionArgs.builder()
///                         .entityIdKey("entity_id_key1")
///                         .eventPattern("{\"Price\":[{\"numeric\":[\">\",11,\"<=\",22]}]}")
///                         .name("name1")
///                         .unitLabel("unit_label1")
///                         .valueKey("value_key1")
///                         .build())
///                     .build(),
///                 LaunchMetricMonitorArgs.builder()
///                     .metricDefinition(LaunchMetricMonitorMetricDefinitionArgs.builder()
///                         .entityIdKey("entity_id_key2")
///                         .eventPattern("{\"Price\":[{\"numeric\":[\">\",9,\"<=\",19]}]}")
///                         .name("name2")
///                         .unitLabel("unit_label2")
///                         .valueKey("value_key2")
///                         .build())
///                     .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.of("Variation1", 0))
///                     .startTime("2024-01-07 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///       metricMonitors:
///         - metricDefinition:
///             entityIdKey: entity_id_key1
///             eventPattern: '{"Price":[{"numeric":[">",11,"<=",22]}]}'
///             name: name1
///             unitLabel: unit_label1
///             valueKey: value_key1
///         - metricDefinition:
///             entityIdKey: entity_id_key2
///             eventPattern: '{"Price":[{"numeric":[">",9,"<=",19]}]}'
///             name: name2
///             unitLabel: unit_label2
///             valueKey: value_key2
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///             startTime: 2024-01-07 01:43:59+00:00
/// ```
///
///
/// ### With randomizationSalt
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     randomizationSalt: "example randomization salt",
///     groups: [{
///         feature: exampleAwsEvidentlyFeature.name,
///         name: "Variation1",
///         variation: "Variation1",
///     }],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///             },
///             startTime: "2024-01-07 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     randomization_salt="example randomization salt",
///     groups=[{
///         "feature": example_aws_evidently_feature["name"],
///         "name": "Variation1",
///         "variation": "Variation1",
///     }],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///             },
///             "start_time": "2024-01-07 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         RandomizationSalt = "example randomization salt",
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:              pulumi.String("example"),
/// 			Project:           pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			RandomizationSalt: pulumi.String("example randomization salt"),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name               = "example"
///   project            = exampleAwsEvidentlyProject.name
///   randomization_salt = "example randomization salt"
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .randomizationSalt("example randomization salt")
///             .groups(LaunchGroupArgs.builder()
///                 .feature(exampleAwsEvidentlyFeature.name())
///                 .name("Variation1")
///                 .variation("Variation1")
///                 .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.of("Variation1", 0))
///                     .startTime("2024-01-07 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       randomizationSalt: example randomization salt
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///             startTime: 2024-01-07 01:43:59+00:00
/// ```
///
///
/// ### With multiple steps
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     groups: [
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation1",
///             variation: "Variation1",
///         },
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation2",
///             variation: "Variation2",
///         },
///     ],
///     scheduledSplitsConfig: {
///         steps: [
///             {
///                 groupWeights: {
///                     Variation1: 15,
///                     Variation2: 10,
///                 },
///                 startTime: "2024-01-07 01:43:59+00:00",
///             },
///             {
///                 groupWeights: {
///                     Variation1: 20,
///                     Variation2: 25,
///                 },
///                 startTime: "2024-01-08 01:43:59+00:00",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     groups=[
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation1",
///             "variation": "Variation1",
///         },
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation2",
///             "variation": "Variation2",
///         },
///     ],
///     scheduled_splits_config={
///         "steps": [
///             {
///                 "group_weights": {
///                     "Variation1": 15,
///                     "Variation2": 10,
///                 },
///                 "start_time": "2024-01-07 01:43:59+00:00",
///             },
///             {
///                 "group_weights": {
///                     "Variation1": 20,
///                     "Variation2": 25,
///                 },
///                 "start_time": "2024-01-08 01:43:59+00:00",
///             },
///         ],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation2",
///                 Variation = "Variation2",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 15 },
///                         { "Variation2", 10 },
///                     },
///                     StartTime = "2024-01-07 01:43:59+00:00",
///                 },
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 20 },
///                         { "Variation2", 25 },
///                     },
///                     StartTime = "2024-01-08 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation2"),
/// 					Variation: pulumi.String("Variation2"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(15),
/// 							"Variation2": pulumi.Int(10),
/// 						},
/// 						StartTime: pulumi.String("2024-01-07 01:43:59+00:00"),
/// 					},
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(20),
/// 							"Variation2": pulumi.Int(25),
/// 						},
/// 						StartTime: pulumi.String("2024-01-08 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name    = "example"
///   project = exampleAwsEvidentlyProject.name
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation2"
///     variation = "Variation2"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 15
///         "Variation2" = 10
///       }
///       "startTime" = "2024-01-07 01:43:59+00:00"
///       }, {
///       "groupWeights" = {
///         "Variation1" = 20
///         "Variation2" = 25
///       }
///       "startTime" = "2024-01-08 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .groups(
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation1")
///                     .variation("Variation1")
///                     .build(),
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation2")
///                     .variation("Variation2")
///                     .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(
///                     LaunchScheduledSplitsConfigStepArgs.builder()
///                         .groupWeights(Map.ofEntries(
///                             Map.entry("Variation1", 15),
///                             Map.entry("Variation2", 10)
///                         ))
///                         .startTime("2024-01-07 01:43:59+00:00")
///                         .build(),
///                     LaunchScheduledSplitsConfigStepArgs.builder()
///                         .groupWeights(Map.ofEntries(
///                             Map.entry("Variation1", 20),
///                             Map.entry("Variation2", 25)
///                         ))
///                         .startTime("2024-01-08 01:43:59+00:00")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation2
///           variation: Variation2
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 15
///               Variation2: 10
///             startTime: 2024-01-07 01:43:59+00:00
///           - groupWeights:
///               Variation1: 20
///               Variation2: 25
///             startTime: 2024-01-08 01:43:59+00:00
/// ```
///
///
/// ### With segment overrides
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Launch("example", {
///     name: "example",
///     project: exampleAwsEvidentlyProject.name,
///     groups: [
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation1",
///             variation: "Variation1",
///         },
///         {
///             feature: exampleAwsEvidentlyFeature.name,
///             name: "Variation2",
///             variation: "Variation2",
///         },
///     ],
///     scheduledSplitsConfig: {
///         steps: [{
///             groupWeights: {
///                 Variation1: 0,
///                 Variation2: 0,
///             },
///             segmentOverrides: [
///                 {
///                     evaluationOrder: 1,
///                     segment: exampleAwsEvidentlySegment.name,
///                     weights: {
///                         Variation2: 10000,
///                     },
///                 },
///                 {
///                     evaluationOrder: 2,
///                     segment: exampleAwsEvidentlySegment.name,
///                     weights: {
///                         Variation1: 40000,
///                         Variation2: 30000,
///                     },
///                 },
///             ],
///             startTime: "2024-01-08 01:43:59+00:00",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Launch("example",
///     name="example",
///     project=example_aws_evidently_project["name"],
///     groups=[
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation1",
///             "variation": "Variation1",
///         },
///         {
///             "feature": example_aws_evidently_feature["name"],
///             "name": "Variation2",
///             "variation": "Variation2",
///         },
///     ],
///     scheduled_splits_config={
///         "steps": [{
///             "group_weights": {
///                 "Variation1": 0,
///                 "Variation2": 0,
///             },
///             "segment_overrides": [
///                 {
///                     "evaluation_order": 1,
///                     "segment": example_aws_evidently_segment["name"],
///                     "weights": {
///                         "Variation2": 10000,
///                     },
///                 },
///                 {
///                     "evaluation_order": 2,
///                     "segment": example_aws_evidently_segment["name"],
///                     "weights": {
///                         "Variation1": 40000,
///                         "Variation2": 30000,
///                     },
///                 },
///             ],
///             "start_time": "2024-01-08 01:43:59+00:00",
///         }],
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
///     var example = new Aws.Evidently.Launch("example", new()
///     {
///         Name = "example",
///         Project = exampleAwsEvidentlyProject.Name,
///         Groups = new[]
///         {
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation1",
///                 Variation = "Variation1",
///             },
///             new Aws.Evidently.Inputs.LaunchGroupArgs
///             {
///                 Feature = exampleAwsEvidentlyFeature.Name,
///                 Name = "Variation2",
///                 Variation = "Variation2",
///             },
///         },
///         ScheduledSplitsConfig = new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigArgs
///         {
///             Steps = new[]
///             {
///                 new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepArgs
///                 {
///                     GroupWeights =
///                     {
///                         { "Variation1", 0 },
///                         { "Variation2", 0 },
///                     },
///                     SegmentOverrides = new[]
///                     {
///                         new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepSegmentOverrideArgs
///                         {
///                             EvaluationOrder = 1,
///                             Segment = exampleAwsEvidentlySegment.Name,
///                             Weights =
///                             {
///                                 { "Variation2", 10000 },
///                             },
///                         },
///                         new Aws.Evidently.Inputs.LaunchScheduledSplitsConfigStepSegmentOverrideArgs
///                         {
///                             EvaluationOrder = 2,
///                             Segment = exampleAwsEvidentlySegment.Name,
///                             Weights =
///                             {
///                                 { "Variation1", 40000 },
///                                 { "Variation2", 30000 },
///                             },
///                         },
///                     },
///                     StartTime = "2024-01-08 01:43:59+00:00",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewLaunch(ctx, "example", &evidently.LaunchArgs{
/// 			Name:    pulumi.String("example"),
/// 			Project: pulumi.Any(exampleAwsEvidentlyProject.Name),
/// 			Groups: evidently.LaunchGroupArray{
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation1"),
/// 					Variation: pulumi.String("Variation1"),
/// 				},
/// 				&evidently.LaunchGroupArgs{
/// 					Feature:   pulumi.Any(exampleAwsEvidentlyFeature.Name),
/// 					Name:      pulumi.String("Variation2"),
/// 					Variation: pulumi.String("Variation2"),
/// 				},
/// 			},
/// 			ScheduledSplitsConfig: &evidently.LaunchScheduledSplitsConfigArgs{
/// 				Steps: evidently.LaunchScheduledSplitsConfigStepArray{
/// 					&evidently.LaunchScheduledSplitsConfigStepArgs{
/// 						GroupWeights: pulumi.IntMap{
/// 							"Variation1": pulumi.Int(0),
/// 							"Variation2": pulumi.Int(0),
/// 						},
/// 						SegmentOverrides: evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArray{
/// 							&evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArgs{
/// 								EvaluationOrder: pulumi.Int(1),
/// 								Segment:         pulumi.Any(exampleAwsEvidentlySegment.Name),
/// 								Weights: pulumi.IntMap{
/// 									"Variation2": pulumi.Int(10000),
/// 								},
/// 							},
/// 							&evidently.LaunchScheduledSplitsConfigStepSegmentOverrideArgs{
/// 								EvaluationOrder: pulumi.Int(2),
/// 								Segment:         pulumi.Any(exampleAwsEvidentlySegment.Name),
/// 								Weights: pulumi.IntMap{
/// 									"Variation1": pulumi.Int(40000),
/// 									"Variation2": pulumi.Int(30000),
/// 								},
/// 							},
/// 						},
/// 						StartTime: pulumi.String("2024-01-08 01:43:59+00:00"),
/// 					},
/// 				},
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
/// resource "aws_evidently_launch" "example" {
///   name    = "example"
///   project = exampleAwsEvidentlyProject.name
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation1"
///     variation = "Variation1"
///   }
///   groups {
///     feature   = exampleAwsEvidentlyFeature.name
///     name      = "Variation2"
///     variation = "Variation2"
///   }
///   scheduled_splits_config = {
///     steps = [{
///       "groupWeights" = {
///         "Variation1" = 0
///         "Variation2" = 0
///       }
///       "segmentOverrides" = [{
///         "evaluationOrder" = 1
///         "segment"         = exampleAwsEvidentlySegment.name
///         "weights" = {
///           "Variation2" = 10000
///         }
///         }, {
///         "evaluationOrder" = 2
///         "segment"         = exampleAwsEvidentlySegment.name
///         "weights" = {
///           "Variation1" = 40000
///           "Variation2" = 30000
///         }
///       }]
///       "startTime" = "2024-01-08 01:43:59+00:00"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.evidently.Launch;
/// import com.pulumi.aws.evidently.LaunchArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchGroupArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepArgs;
/// import com.pulumi.aws.evidently.inputs.LaunchScheduledSplitsConfigStepSegmentOverrideArgs;
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
///         var example = new Launch("example", LaunchArgs.builder()
///             .name("example")
///             .project(exampleAwsEvidentlyProject.name())
///             .groups(
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation1")
///                     .variation("Variation1")
///                     .build(),
///                 LaunchGroupArgs.builder()
///                     .feature(exampleAwsEvidentlyFeature.name())
///                     .name("Variation2")
///                     .variation("Variation2")
///                     .build())
///             .scheduledSplitsConfig(LaunchScheduledSplitsConfigArgs.builder()
///                 .steps(LaunchScheduledSplitsConfigStepArgs.builder()
///                     .groupWeights(Map.ofEntries(
///                         Map.entry("Variation1", 0),
///                         Map.entry("Variation2", 0)
///                     ))
///                     .segmentOverrides(
///                         LaunchScheduledSplitsConfigStepSegmentOverrideArgs.builder()
///                             .evaluationOrder(1)
///                             .segment(exampleAwsEvidentlySegment.name())
///                             .weights(Map.of("Variation2", 10000))
///                             .build(),
///                         LaunchScheduledSplitsConfigStepSegmentOverrideArgs.builder()
///                             .evaluationOrder(2)
///                             .segment(exampleAwsEvidentlySegment.name())
///                             .weights(Map.ofEntries(
///                                 Map.entry("Variation1", 40000),
///                                 Map.entry("Variation2", 30000)
///                             ))
///                             .build())
///                     .startTime("2024-01-08 01:43:59+00:00")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Launch
///     properties:
///       name: example
///       project: ${exampleAwsEvidentlyProject.name}
///       groups:
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation1
///           variation: Variation1
///         - feature: ${exampleAwsEvidentlyFeature.name}
///           name: Variation2
///           variation: Variation2
///       scheduledSplitsConfig:
///         steps:
///           - groupWeights:
///               Variation1: 0
///               Variation2: 0
///             segmentOverrides:
///               - evaluationOrder: 1
///                 segment: ${exampleAwsEvidentlySegment.name}
///                 weights:
///                   Variation2: 10000
///               - evaluationOrder: 2
///                 segment: ${exampleAwsEvidentlySegment.name}
///                 weights:
///                   Variation1: 40000
///                   Variation2: 30000
///             startTime: 2024-01-08 01:43:59+00:00
/// ```
///
///
/// ## Import
///
/// Import using the `name` of the launch and `arn` of the project separated by a `:`:
///
///
/// **Using `pulumi import` to import** CloudWatch Evidently Launch using the `name` of the launch and `name` of the project or `arn` of the hosting CloudWatch Evidently Project separated by a `:`. For example:
///
/// Import using the `name` of the launch and `name` of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:exampleProjectName
/// ```
///
/// Import using the `name` of the launch and `arn` of the project separated by a `:`:
///
/// ```sh
/// $ pulumi import aws:evidently/launch:Launch example exampleLaunchName:arn:aws:evidently:us-east-1:123456789012:project/exampleProjectName
/// ```
class Launch extends pulumi.CustomResource {
  /// The ARN of the launch.
  late final pulumi.Output<String> arn;
  /// The date and time that the launch is created.
  late final pulumi.Output<String> createdTime;
  /// Specifies the description of the launch.
  late final pulumi.Output<String?> description;
  /// A block that contains information about the start and end times of the launch. Detailed below
  late final pulumi.Output<List<Map<String, dynamic>>> executions;
  /// One or up to five blocks that contain the feature and variations that are to be used for the launch. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> groups;
  /// The date and time that the launch was most recently updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// One or up to three blocks that define the metrics that will be used to monitor the launch performance. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> metricMonitors;
  /// The name for the new launch. Minimum length of `1`. Maximum length of `127`.
  late final pulumi.Output<String> name;
  /// The name or ARN of the project that is to contain the new launch.
  late final pulumi.Output<String> project;
  /// When Evidently assigns a particular user session to a launch, it must use a randomization ID to determine which variation the user session is served. This randomization ID is a combination of the entity ID and randomizationSalt. If you omit randomizationSalt, Evidently uses the launch name as the randomizationSalt.
  late final pulumi.Output<String?> randomizationSalt;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A block that defines the traffic allocation percentages among the feature variations during each step of the launch. Detailed below.
  late final pulumi.Output<LaunchScheduledSplitsConfig?> scheduledSplitsConfig;
  /// The current state of the launch. Valid values are `CREATED`, `UPDATING`, `RUNNING`, `COMPLETED`, and `CANCELLED`.
  late final pulumi.Output<String> status;
  /// If the launch was stopped, this is the string that was entered by the person who stopped the launch, to explain why it was stopped.
  late final pulumi.Output<String> statusReason;
  /// Tags to apply to the launch. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of launch.
  late final pulumi.Output<String> type;

  /// Creates a new [Launch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Launch]. {@macro pulumi_evidently_launch_launch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Launch(
    String name, {
    LaunchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/launch:Launch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String?>('description');
    executions = registerOutput<List<Map<String, dynamic>>>('executions');
    groups = registerOutput<List<Map<String, dynamic>>>('groups');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    metricMonitors = registerOutput<List<Map<String, dynamic>>?>('metricMonitors');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    randomizationSalt = registerOutput<String?>('randomizationSalt');
    region = registerOutput<String>('region');
    scheduledSplitsConfig = registerOutput<LaunchScheduledSplitsConfig?>('scheduledSplitsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchScheduledSplitsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Launch] resource's state with the given [name] and [id].
  static Launch get(
    String name,
    pulumi.Input<String> id, {
    LaunchState? state,
  }) {
    return Launch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Launch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/launch:Launch',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String?>('description');
    executions = registerOutput<List<Map<String, dynamic>>>('executions');
    groups = registerOutput<List<Map<String, dynamic>>>('groups');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    metricMonitors = registerOutput<List<Map<String, dynamic>>?>('metricMonitors');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    randomizationSalt = registerOutput<String?>('randomizationSalt');
    region = registerOutput<String>('region');
    scheduledSplitsConfig = registerOutput<LaunchScheduledSplitsConfig?>('scheduledSplitsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchScheduledSplitsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
