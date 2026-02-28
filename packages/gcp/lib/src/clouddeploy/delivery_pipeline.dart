import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_args.dart';
import 'delivery_pipeline_condition.dart';
import 'delivery_pipeline_serial_pipeline.dart';

/// The Cloud Deploy `DeliveryPipeline` resource
///
/// ## Example Usage
///
/// ### Canary_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.DeliveryPipeline("primary", {
///     location: "us-west1",
///     name: "pipeline",
///     description: "basic description",
///     project: "my-project-name",
///     serialPipeline: {
///         stages: [
///             {
///                 deployParameters: [{
///                     values: {
///                         deployParameterKey: "deployParameterValue",
///                     },
///                     matchTargetLabels: {},
///                 }],
///                 profiles: [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 targetId: "example-target-one",
///             },
///             {
///                 profiles: [],
///                 targetId: "example-target-two",
///             },
///         ],
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.DeliveryPipeline("primary",
///     location="us-west1",
///     name="pipeline",
///     description="basic description",
///     project="my-project-name",
///     serial_pipeline={
///         "stages": [
///             {
///                 "deploy_parameters": [{
///                     "values": {
///                         "deployParameterKey": "deployParameterValue",
///                     },
///                     "match_target_labels": {},
///                 }],
///                 "profiles": [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 "target_id": "example-target-one",
///             },
///             {
///                 "profiles": [],
///                 "target_id": "example-target-two",
///             },
///         ],
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudDeploy.DeliveryPipeline("primary", new()
///     {
///         Location = "us-west1",
///         Name = "pipeline",
///         Description = "basic description",
///         Project = "my-project-name",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     DeployParameters = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageDeployParameterArgs
///                         {
///                             Values =
///                             {
///                                 { "deployParameterKey", "deployParameterValue" },
///                             },
///                             MatchTargetLabels = null,
///                         },
///                     },
///                     Profiles = new[]
///                     {
///                         "example-profile-one",
///                         "example-profile-two",
///                     },
///                     TargetId = "example-target-one",
///                 },
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     Profiles = new() { },
///                     TargetId = "example-target-two",
///                 },
///             },
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeliveryPipeline(ctx, "primary", &clouddeploy.DeliveryPipelineArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("pipeline"),
/// 			Description: pulumi.String("basic description"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						DeployParameters: clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArray{
/// 							&clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArgs{
/// 								Values: pulumi.StringMap{
/// 									"deployParameterKey": pulumi.String("deployParameterValue"),
/// 								},
/// 								MatchTargetLabels: pulumi.StringMap{},
/// 							},
/// 						},
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("example-profile-one"),
/// 							pulumi.String("example-profile-two"),
/// 						},
/// 						TargetId: pulumi.String("example-target-one"),
/// 					},
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						Profiles: pulumi.StringArray{},
/// 						TargetId: pulumi.String("example-target-two"),
/// 					},
/// 				},
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new DeliveryPipeline("primary", DeliveryPipelineArgs.builder()
///             .location("us-west1")
///             .name("pipeline")
///             .description("basic description")
///             .project("my-project-name")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .deployParameters(DeliveryPipelineSerialPipelineStageDeployParameterArgs.builder()
///                             .values(Map.of("deployParameterKey", "deployParameterValue"))
///                             .matchTargetLabels(Map.ofEntries(
///                             ))
///                             .build())
///                         .profiles(
///                             "example-profile-one",
///                             "example-profile-two")
///                         .targetId("example-target-one")
///                         .build(),
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .profiles()
///                         .targetId("example-target-two")
///                         .build())
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       location: us-west1
///       name: pipeline
///       description: basic description
///       project: my-project-name
///       serialPipeline:
///         stages:
///           - deployParameters:
///               - values:
///                   deployParameterKey: deployParameterValue
///                 matchTargetLabels: {}
///             profiles:
///               - example-profile-one
///               - example-profile-two
///             targetId: example-target-one
///           - profiles: []
///             targetId: example-target-two
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Canary_service_networking_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.DeliveryPipeline("primary", {
///     location: "us-west1",
///     name: "pipeline",
///     description: "basic description",
///     project: "my-project-name",
///     serialPipeline: {
///         stages: [
///             {
///                 deployParameters: [{
///                     values: {
///                         deployParameterKey: "deployParameterValue",
///                     },
///                     matchTargetLabels: {},
///                 }],
///                 profiles: [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 targetId: "example-target-one",
///             },
///             {
///                 profiles: [],
///                 targetId: "example-target-two",
///             },
///         ],
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.DeliveryPipeline("primary",
///     location="us-west1",
///     name="pipeline",
///     description="basic description",
///     project="my-project-name",
///     serial_pipeline={
///         "stages": [
///             {
///                 "deploy_parameters": [{
///                     "values": {
///                         "deployParameterKey": "deployParameterValue",
///                     },
///                     "match_target_labels": {},
///                 }],
///                 "profiles": [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 "target_id": "example-target-one",
///             },
///             {
///                 "profiles": [],
///                 "target_id": "example-target-two",
///             },
///         ],
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudDeploy.DeliveryPipeline("primary", new()
///     {
///         Location = "us-west1",
///         Name = "pipeline",
///         Description = "basic description",
///         Project = "my-project-name",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     DeployParameters = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageDeployParameterArgs
///                         {
///                             Values =
///                             {
///                                 { "deployParameterKey", "deployParameterValue" },
///                             },
///                             MatchTargetLabels = null,
///                         },
///                     },
///                     Profiles = new[]
///                     {
///                         "example-profile-one",
///                         "example-profile-two",
///                     },
///                     TargetId = "example-target-one",
///                 },
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     Profiles = new() { },
///                     TargetId = "example-target-two",
///                 },
///             },
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeliveryPipeline(ctx, "primary", &clouddeploy.DeliveryPipelineArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("pipeline"),
/// 			Description: pulumi.String("basic description"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						DeployParameters: clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArray{
/// 							&clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArgs{
/// 								Values: pulumi.StringMap{
/// 									"deployParameterKey": pulumi.String("deployParameterValue"),
/// 								},
/// 								MatchTargetLabels: pulumi.StringMap{},
/// 							},
/// 						},
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("example-profile-one"),
/// 							pulumi.String("example-profile-two"),
/// 						},
/// 						TargetId: pulumi.String("example-target-one"),
/// 					},
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						Profiles: pulumi.StringArray{},
/// 						TargetId: pulumi.String("example-target-two"),
/// 					},
/// 				},
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new DeliveryPipeline("primary", DeliveryPipelineArgs.builder()
///             .location("us-west1")
///             .name("pipeline")
///             .description("basic description")
///             .project("my-project-name")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .deployParameters(DeliveryPipelineSerialPipelineStageDeployParameterArgs.builder()
///                             .values(Map.of("deployParameterKey", "deployParameterValue"))
///                             .matchTargetLabels(Map.ofEntries(
///                             ))
///                             .build())
///                         .profiles(
///                             "example-profile-one",
///                             "example-profile-two")
///                         .targetId("example-target-one")
///                         .build(),
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .profiles()
///                         .targetId("example-target-two")
///                         .build())
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       location: us-west1
///       name: pipeline
///       description: basic description
///       project: my-project-name
///       serialPipeline:
///         stages:
///           - deployParameters:
///               - values:
///                   deployParameterKey: deployParameterValue
///                 matchTargetLabels: {}
///             profiles:
///               - example-profile-one
///               - example-profile-two
///             targetId: example-target-one
///           - profiles: []
///             targetId: example-target-two
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Canaryrun_delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.DeliveryPipeline("primary", {
///     location: "us-west1",
///     name: "pipeline",
///     description: "basic description",
///     project: "my-project-name",
///     serialPipeline: {
///         stages: [
///             {
///                 deployParameters: [{
///                     values: {
///                         deployParameterKey: "deployParameterValue",
///                     },
///                     matchTargetLabels: {},
///                 }],
///                 profiles: [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 targetId: "example-target-one",
///             },
///             {
///                 profiles: [],
///                 targetId: "example-target-two",
///             },
///         ],
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.DeliveryPipeline("primary",
///     location="us-west1",
///     name="pipeline",
///     description="basic description",
///     project="my-project-name",
///     serial_pipeline={
///         "stages": [
///             {
///                 "deploy_parameters": [{
///                     "values": {
///                         "deployParameterKey": "deployParameterValue",
///                     },
///                     "match_target_labels": {},
///                 }],
///                 "profiles": [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 "target_id": "example-target-one",
///             },
///             {
///                 "profiles": [],
///                 "target_id": "example-target-two",
///             },
///         ],
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudDeploy.DeliveryPipeline("primary", new()
///     {
///         Location = "us-west1",
///         Name = "pipeline",
///         Description = "basic description",
///         Project = "my-project-name",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     DeployParameters = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageDeployParameterArgs
///                         {
///                             Values =
///                             {
///                                 { "deployParameterKey", "deployParameterValue" },
///                             },
///                             MatchTargetLabels = null,
///                         },
///                     },
///                     Profiles = new[]
///                     {
///                         "example-profile-one",
///                         "example-profile-two",
///                     },
///                     TargetId = "example-target-one",
///                 },
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     Profiles = new() { },
///                     TargetId = "example-target-two",
///                 },
///             },
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeliveryPipeline(ctx, "primary", &clouddeploy.DeliveryPipelineArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("pipeline"),
/// 			Description: pulumi.String("basic description"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						DeployParameters: clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArray{
/// 							&clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArgs{
/// 								Values: pulumi.StringMap{
/// 									"deployParameterKey": pulumi.String("deployParameterValue"),
/// 								},
/// 								MatchTargetLabels: pulumi.StringMap{},
/// 							},
/// 						},
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("example-profile-one"),
/// 							pulumi.String("example-profile-two"),
/// 						},
/// 						TargetId: pulumi.String("example-target-one"),
/// 					},
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						Profiles: pulumi.StringArray{},
/// 						TargetId: pulumi.String("example-target-two"),
/// 					},
/// 				},
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new DeliveryPipeline("primary", DeliveryPipelineArgs.builder()
///             .location("us-west1")
///             .name("pipeline")
///             .description("basic description")
///             .project("my-project-name")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .deployParameters(DeliveryPipelineSerialPipelineStageDeployParameterArgs.builder()
///                             .values(Map.of("deployParameterKey", "deployParameterValue"))
///                             .matchTargetLabels(Map.ofEntries(
///                             ))
///                             .build())
///                         .profiles(
///                             "example-profile-one",
///                             "example-profile-two")
///                         .targetId("example-target-one")
///                         .build(),
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .profiles()
///                         .targetId("example-target-two")
///                         .build())
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       location: us-west1
///       name: pipeline
///       description: basic description
///       project: my-project-name
///       serialPipeline:
///         stages:
///           - deployParameters:
///               - values:
///                   deployParameterKey: deployParameterValue
///                 matchTargetLabels: {}
///             profiles:
///               - example-profile-one
///               - example-profile-two
///             targetId: example-target-one
///           - profiles: []
///             targetId: example-target-two
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Delivery_pipeline
/// Creates a basic Cloud Deploy delivery pipeline
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.DeliveryPipeline("primary", {
///     location: "us-west1",
///     name: "pipeline",
///     description: "basic description",
///     project: "my-project-name",
///     serialPipeline: {
///         stages: [
///             {
///                 deployParameters: [{
///                     values: {
///                         deployParameterKey: "deployParameterValue",
///                     },
///                     matchTargetLabels: {},
///                 }],
///                 profiles: [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 targetId: "example-target-one",
///             },
///             {
///                 profiles: [],
///                 targetId: "example-target-two",
///             },
///         ],
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.DeliveryPipeline("primary",
///     location="us-west1",
///     name="pipeline",
///     description="basic description",
///     project="my-project-name",
///     serial_pipeline={
///         "stages": [
///             {
///                 "deploy_parameters": [{
///                     "values": {
///                         "deployParameterKey": "deployParameterValue",
///                     },
///                     "match_target_labels": {},
///                 }],
///                 "profiles": [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 "target_id": "example-target-one",
///             },
///             {
///                 "profiles": [],
///                 "target_id": "example-target-two",
///             },
///         ],
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudDeploy.DeliveryPipeline("primary", new()
///     {
///         Location = "us-west1",
///         Name = "pipeline",
///         Description = "basic description",
///         Project = "my-project-name",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     DeployParameters = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageDeployParameterArgs
///                         {
///                             Values =
///                             {
///                                 { "deployParameterKey", "deployParameterValue" },
///                             },
///                             MatchTargetLabels = null,
///                         },
///                     },
///                     Profiles = new[]
///                     {
///                         "example-profile-one",
///                         "example-profile-two",
///                     },
///                     TargetId = "example-target-one",
///                 },
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     Profiles = new() { },
///                     TargetId = "example-target-two",
///                 },
///             },
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeliveryPipeline(ctx, "primary", &clouddeploy.DeliveryPipelineArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("pipeline"),
/// 			Description: pulumi.String("basic description"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						DeployParameters: clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArray{
/// 							&clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArgs{
/// 								Values: pulumi.StringMap{
/// 									"deployParameterKey": pulumi.String("deployParameterValue"),
/// 								},
/// 								MatchTargetLabels: pulumi.StringMap{},
/// 							},
/// 						},
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("example-profile-one"),
/// 							pulumi.String("example-profile-two"),
/// 						},
/// 						TargetId: pulumi.String("example-target-one"),
/// 					},
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						Profiles: pulumi.StringArray{},
/// 						TargetId: pulumi.String("example-target-two"),
/// 					},
/// 				},
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new DeliveryPipeline("primary", DeliveryPipelineArgs.builder()
///             .location("us-west1")
///             .name("pipeline")
///             .description("basic description")
///             .project("my-project-name")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .deployParameters(DeliveryPipelineSerialPipelineStageDeployParameterArgs.builder()
///                             .values(Map.of("deployParameterKey", "deployParameterValue"))
///                             .matchTargetLabels(Map.ofEntries(
///                             ))
///                             .build())
///                         .profiles(
///                             "example-profile-one",
///                             "example-profile-two")
///                         .targetId("example-target-one")
///                         .build(),
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .profiles()
///                         .targetId("example-target-two")
///                         .build())
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       location: us-west1
///       name: pipeline
///       description: basic description
///       project: my-project-name
///       serialPipeline:
///         stages:
///           - deployParameters:
///               - values:
///                   deployParameterKey: deployParameterValue
///                 matchTargetLabels: {}
///             profiles:
///               - example-profile-one
///               - example-profile-two
///             targetId: example-target-one
///           - profiles: []
///             targetId: example-target-two
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
/// ### Verify_delivery_pipeline
/// tests creating and updating a delivery pipeline with deployment verification strategy
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.clouddeploy.DeliveryPipeline("primary", {
///     location: "us-west1",
///     name: "pipeline",
///     description: "basic description",
///     project: "my-project-name",
///     serialPipeline: {
///         stages: [
///             {
///                 deployParameters: [{
///                     values: {
///                         deployParameterKey: "deployParameterValue",
///                     },
///                     matchTargetLabels: {},
///                 }],
///                 profiles: [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 targetId: "example-target-one",
///             },
///             {
///                 profiles: [],
///                 targetId: "example-target-two",
///             },
///         ],
///     },
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.clouddeploy.DeliveryPipeline("primary",
///     location="us-west1",
///     name="pipeline",
///     description="basic description",
///     project="my-project-name",
///     serial_pipeline={
///         "stages": [
///             {
///                 "deploy_parameters": [{
///                     "values": {
///                         "deployParameterKey": "deployParameterValue",
///                     },
///                     "match_target_labels": {},
///                 }],
///                 "profiles": [
///                     "example-profile-one",
///                     "example-profile-two",
///                 ],
///                 "target_id": "example-target-one",
///             },
///             {
///                 "profiles": [],
///                 "target_id": "example-target-two",
///             },
///         ],
///     },
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.CloudDeploy.DeliveryPipeline("primary", new()
///     {
///         Location = "us-west1",
///         Name = "pipeline",
///         Description = "basic description",
///         Project = "my-project-name",
///         SerialPipeline = new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineArgs
///         {
///             Stages = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     DeployParameters = new[]
///                     {
///                         new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageDeployParameterArgs
///                         {
///                             Values =
///                             {
///                                 { "deployParameterKey", "deployParameterValue" },
///                             },
///                             MatchTargetLabels = null,
///                         },
///                     },
///                     Profiles = new[]
///                     {
///                         "example-profile-one",
///                         "example-profile-two",
///                     },
///                     TargetId = "example-target-one",
///                 },
///                 new Gcp.CloudDeploy.Inputs.DeliveryPipelineSerialPipelineStageArgs
///                 {
///                     Profiles = new() { },
///                     TargetId = "example-target-two",
///                 },
///             },
///         },
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewDeliveryPipeline(ctx, "primary", &clouddeploy.DeliveryPipelineArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("pipeline"),
/// 			Description: pulumi.String("basic description"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			SerialPipeline: &clouddeploy.DeliveryPipelineSerialPipelineArgs{
/// 				Stages: clouddeploy.DeliveryPipelineSerialPipelineStageArray{
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						DeployParameters: clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArray{
/// 							&clouddeploy.DeliveryPipelineSerialPipelineStageDeployParameterArgs{
/// 								Values: pulumi.StringMap{
/// 									"deployParameterKey": pulumi.String("deployParameterValue"),
/// 								},
/// 								MatchTargetLabels: pulumi.StringMap{},
/// 							},
/// 						},
/// 						Profiles: pulumi.StringArray{
/// 							pulumi.String("example-profile-one"),
/// 							pulumi.String("example-profile-two"),
/// 						},
/// 						TargetId: pulumi.String("example-target-one"),
/// 					},
/// 					&clouddeploy.DeliveryPipelineSerialPipelineStageArgs{
/// 						Profiles: pulumi.StringArray{},
/// 						TargetId: pulumi.String("example-target-two"),
/// 					},
/// 				},
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipeline;
/// import com.pulumi.gcp.clouddeploy.DeliveryPipelineArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.DeliveryPipelineSerialPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var primary = new DeliveryPipeline("primary", DeliveryPipelineArgs.builder()
///             .location("us-west1")
///             .name("pipeline")
///             .description("basic description")
///             .project("my-project-name")
///             .serialPipeline(DeliveryPipelineSerialPipelineArgs.builder()
///                 .stages(
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .deployParameters(DeliveryPipelineSerialPipelineStageDeployParameterArgs.builder()
///                             .values(Map.of("deployParameterKey", "deployParameterValue"))
///                             .matchTargetLabels(Map.ofEntries(
///                             ))
///                             .build())
///                         .profiles(
///                             "example-profile-one",
///                             "example-profile-two")
///                         .targetId("example-target-one")
///                         .build(),
///                     DeliveryPipelineSerialPipelineStageArgs.builder()
///                         .profiles()
///                         .targetId("example-target-two")
///                         .build())
///                 .build())
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:clouddeploy:DeliveryPipeline
///     properties:
///       location: us-west1
///       name: pipeline
///       description: basic description
///       project: my-project-name
///       serialPipeline:
///         stages:
///           - deployParameters:
///               - values:
///                   deployParameterKey: deployParameterValue
///                 matchTargetLabels: {}
///             profiles:
///               - example-profile-one
///               - example-profile-two
///             targetId: example-target-one
///           - profiles: []
///             targetId: example-target-two
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
/// ```
///
///
/// ## Import
///
/// DeliveryPipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deliveryPipelines/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DeliveryPipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default projects/{{project}}/locations/{{location}}/deliveryPipelines/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deliveryPipeline:DeliveryPipeline default {{location}}/{{name}}
/// ```
class DeliveryPipeline extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. Information around the state of the Delivery Pipeline.
  late final pulumi.Output<List<DeliveryPipelineCondition>> conditions;

  /// Output only. Time at which the pipeline was created.
  late final pulumi.Output<String> createTime;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Name of the `DeliveryPipeline`. Format is `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  late final pulumi.Output<DeliveryPipelineSerialPipeline?> serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  late final pulumi.Output<bool?> suspended;

  /// Output only. Unique identifier of the `DeliveryPipeline`.
  late final pulumi.Output<String> uid;

  /// Output only. Most recent time at which the pipeline was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeliveryPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipeline]. {@macro pulumi_clouddeploy_delivery_pipeline_delivery_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipeline(
    String name, {
    DeliveryPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deliveryPipeline:DeliveryPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions =
        registerOutput<List<DeliveryPipelineCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serialPipeline =
        registerOutput<DeliveryPipelineSerialPipeline?>('serialPipeline');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
