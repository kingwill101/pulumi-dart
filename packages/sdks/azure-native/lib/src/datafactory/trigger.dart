import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_events_trigger_response.dart';
import 'trigger_args.dart';

/// Trigger resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Triggers_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trigger = new AzureNative.DataFactory.Trigger("trigger", new()
///     {
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.ScheduleTriggerArgs
///         {
///             Pipelines = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.TriggerPipelineReferenceArgs
///                 {
///                     Parameters =
///                     {
///                         { "OutputBlobNameList", new[]
///                         {
///                             "exampleoutput.csv",
///                         } },
///                     },
///                     PipelineReference = new AzureNative.DataFactory.Inputs.PipelineReferenceArgs
///                     {
///                         ReferenceName = "examplePipeline",
///                         Type = "PipelineReference",
///                     },
///                 },
///             },
///             Recurrence = new AzureNative.DataFactory.Inputs.ScheduleTriggerRecurrenceArgs
///             {
///                 EndTime = "2018-06-16T00:55:13.8441801Z",
///                 Frequency = AzureNative.DataFactory.RecurrenceFrequency.Minute,
///                 Interval = 4,
///                 StartTime = "2018-06-16T00:39:13.8441801Z",
///                 TimeZone = "UTC",
///             },
///             Type = "ScheduleTrigger",
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         TriggerName = "exampleTrigger",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewTrigger(ctx, "trigger", &datafactory.TriggerArgs{
/// 			FactoryName: pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.ScheduleTriggerArgs{
/// 				Pipelines: datafactory.TriggerPipelineReferenceArray{
/// 					&datafactory.TriggerPipelineReferenceArgs{
/// 						Parameters: pulumi.Map{
/// 							"OutputBlobNameList": pulumi.Any{
/// 								"exampleoutput.csv",
/// 							},
/// 						},
/// 						PipelineReference: &datafactory.PipelineReferenceArgs{
/// 							ReferenceName: pulumi.String("examplePipeline"),
/// 							Type:          pulumi.String("PipelineReference"),
/// 						},
/// 					},
/// 				},
/// 				Recurrence: &datafactory.ScheduleTriggerRecurrenceArgs{
/// 					EndTime:   pulumi.String("2018-06-16T00:55:13.8441801Z"),
/// 					Frequency: pulumi.String(datafactory.RecurrenceFrequencyMinute),
/// 					Interval:  pulumi.Int(4),
/// 					StartTime: pulumi.String("2018-06-16T00:39:13.8441801Z"),
/// 					TimeZone:  pulumi.String("UTC"),
/// 				},
/// 				Type: pulumi.String("ScheduleTrigger"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			TriggerName:       pulumi.String("exampleTrigger"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.Trigger;
/// import com.pulumi.azurenative.datafactory.TriggerArgs;
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
///         var trigger = new Trigger("trigger", TriggerArgs.builder()
///             .factoryName("exampleFactoryName")
///             .properties(ScheduleTriggerArgs.builder()
///                 .pipelines(TriggerPipelineReferenceArgs.builder()
///                     .parameters(Map.of("OutputBlobNameList", "exampleoutput.csv"))
///                     .pipelineReference(PipelineReferenceArgs.builder()
///                         .referenceName("examplePipeline")
///                         .type("PipelineReference")
///                         .build())
///                     .build())
///                 .recurrence(ScheduleTriggerRecurrenceArgs.builder()
///                     .endTime("2018-06-16T00:55:13.8441801Z")
///                     .frequency("Minute")
///                     .interval(4)
///                     .startTime("2018-06-16T00:39:13.8441801Z")
///                     .timeZone("UTC")
///                     .build())
///                 .type("ScheduleTrigger")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .triggerName("exampleTrigger")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const trigger = new azure_native.datafactory.Trigger("trigger", {
///     factoryName: "exampleFactoryName",
///     properties: {
///         pipelines: [{
///             parameters: {
///                 OutputBlobNameList: ["exampleoutput.csv"],
///             },
///             pipelineReference: {
///                 referenceName: "examplePipeline",
///                 type: "PipelineReference",
///             },
///         }],
///         recurrence: {
///             endTime: "2018-06-16T00:55:13.8441801Z",
///             frequency: azure_native.datafactory.RecurrenceFrequency.Minute,
///             interval: 4,
///             startTime: "2018-06-16T00:39:13.8441801Z",
///             timeZone: "UTC",
///         },
///         type: "ScheduleTrigger",
///     },
///     resourceGroupName: "exampleResourceGroup",
///     triggerName: "exampleTrigger",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// trigger = azure_native.datafactory.Trigger("trigger",
///     factory_name="exampleFactoryName",
///     properties={
///         "pipelines": [{
///             "parameters": {
///                 "OutputBlobNameList": ["exampleoutput.csv"],
///             },
///             "pipeline_reference": {
///                 "reference_name": "examplePipeline",
///                 "type": "PipelineReference",
///             },
///         }],
///         "recurrence": {
///             "end_time": "2018-06-16T00:55:13.8441801Z",
///             "frequency": azure_native.datafactory.RecurrenceFrequency.MINUTE,
///             "interval": 4,
///             "start_time": "2018-06-16T00:39:13.8441801Z",
///             "time_zone": "UTC",
///         },
///         "type": "ScheduleTrigger",
///     },
///     resource_group_name="exampleResourceGroup",
///     trigger_name="exampleTrigger")
///
/// ```
///
/// ```yaml
/// resources:
///   trigger:
///     type: azure-native:datafactory:Trigger
///     properties:
///       factoryName: exampleFactoryName
///       properties:
///         pipelines:
///           - parameters:
///               OutputBlobNameList:
///                 - exampleoutput.csv
///             pipelineReference:
///               referenceName: examplePipeline
///               type: PipelineReference
///         recurrence:
///           endTime: 2018-06-16T00:55:13.8441801Z
///           frequency: Minute
///           interval: 4
///           startTime: 2018-06-16T00:39:13.8441801Z
///           timeZone: UTC
///         type: ScheduleTrigger
///       resourceGroupName: exampleResourceGroup
///       triggerName: exampleTrigger
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Triggers_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trigger = new AzureNative.DataFactory.Trigger("trigger", new()
///     {
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.ScheduleTriggerArgs
///         {
///             Description = "Example description",
///             Pipelines = new[]
///             {
///                 new AzureNative.DataFactory.Inputs.TriggerPipelineReferenceArgs
///                 {
///                     Parameters =
///                     {
///                         { "OutputBlobNameList", new[]
///                         {
///                             "exampleoutput.csv",
///                         } },
///                     },
///                     PipelineReference = new AzureNative.DataFactory.Inputs.PipelineReferenceArgs
///                     {
///                         ReferenceName = "examplePipeline",
///                         Type = "PipelineReference",
///                     },
///                 },
///             },
///             Recurrence = new AzureNative.DataFactory.Inputs.ScheduleTriggerRecurrenceArgs
///             {
///                 EndTime = "2018-06-16T00:55:14.905167Z",
///                 Frequency = AzureNative.DataFactory.RecurrenceFrequency.Minute,
///                 Interval = 4,
///                 StartTime = "2018-06-16T00:39:14.905167Z",
///                 TimeZone = "UTC",
///             },
///             Type = "ScheduleTrigger",
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         TriggerName = "exampleTrigger",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewTrigger(ctx, "trigger", &datafactory.TriggerArgs{
/// 			FactoryName: pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.ScheduleTriggerArgs{
/// 				Description: pulumi.String("Example description"),
/// 				Pipelines: datafactory.TriggerPipelineReferenceArray{
/// 					&datafactory.TriggerPipelineReferenceArgs{
/// 						Parameters: pulumi.Map{
/// 							"OutputBlobNameList": pulumi.Any{
/// 								"exampleoutput.csv",
/// 							},
/// 						},
/// 						PipelineReference: &datafactory.PipelineReferenceArgs{
/// 							ReferenceName: pulumi.String("examplePipeline"),
/// 							Type:          pulumi.String("PipelineReference"),
/// 						},
/// 					},
/// 				},
/// 				Recurrence: &datafactory.ScheduleTriggerRecurrenceArgs{
/// 					EndTime:   pulumi.String("2018-06-16T00:55:14.905167Z"),
/// 					Frequency: pulumi.String(datafactory.RecurrenceFrequencyMinute),
/// 					Interval:  pulumi.Int(4),
/// 					StartTime: pulumi.String("2018-06-16T00:39:14.905167Z"),
/// 					TimeZone:  pulumi.String("UTC"),
/// 				},
/// 				Type: pulumi.String("ScheduleTrigger"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			TriggerName:       pulumi.String("exampleTrigger"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.Trigger;
/// import com.pulumi.azurenative.datafactory.TriggerArgs;
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
///         var trigger = new Trigger("trigger", TriggerArgs.builder()
///             .factoryName("exampleFactoryName")
///             .properties(ScheduleTriggerArgs.builder()
///                 .description("Example description")
///                 .pipelines(TriggerPipelineReferenceArgs.builder()
///                     .parameters(Map.of("OutputBlobNameList", "exampleoutput.csv"))
///                     .pipelineReference(PipelineReferenceArgs.builder()
///                         .referenceName("examplePipeline")
///                         .type("PipelineReference")
///                         .build())
///                     .build())
///                 .recurrence(ScheduleTriggerRecurrenceArgs.builder()
///                     .endTime("2018-06-16T00:55:14.905167Z")
///                     .frequency("Minute")
///                     .interval(4)
///                     .startTime("2018-06-16T00:39:14.905167Z")
///                     .timeZone("UTC")
///                     .build())
///                 .type("ScheduleTrigger")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .triggerName("exampleTrigger")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const trigger = new azure_native.datafactory.Trigger("trigger", {
///     factoryName: "exampleFactoryName",
///     properties: {
///         description: "Example description",
///         pipelines: [{
///             parameters: {
///                 OutputBlobNameList: ["exampleoutput.csv"],
///             },
///             pipelineReference: {
///                 referenceName: "examplePipeline",
///                 type: "PipelineReference",
///             },
///         }],
///         recurrence: {
///             endTime: "2018-06-16T00:55:14.905167Z",
///             frequency: azure_native.datafactory.RecurrenceFrequency.Minute,
///             interval: 4,
///             startTime: "2018-06-16T00:39:14.905167Z",
///             timeZone: "UTC",
///         },
///         type: "ScheduleTrigger",
///     },
///     resourceGroupName: "exampleResourceGroup",
///     triggerName: "exampleTrigger",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// trigger = azure_native.datafactory.Trigger("trigger",
///     factory_name="exampleFactoryName",
///     properties={
///         "description": "Example description",
///         "pipelines": [{
///             "parameters": {
///                 "OutputBlobNameList": ["exampleoutput.csv"],
///             },
///             "pipeline_reference": {
///                 "reference_name": "examplePipeline",
///                 "type": "PipelineReference",
///             },
///         }],
///         "recurrence": {
///             "end_time": "2018-06-16T00:55:14.905167Z",
///             "frequency": azure_native.datafactory.RecurrenceFrequency.MINUTE,
///             "interval": 4,
///             "start_time": "2018-06-16T00:39:14.905167Z",
///             "time_zone": "UTC",
///         },
///         "type": "ScheduleTrigger",
///     },
///     resource_group_name="exampleResourceGroup",
///     trigger_name="exampleTrigger")
///
/// ```
///
/// ```yaml
/// resources:
///   trigger:
///     type: azure-native:datafactory:Trigger
///     properties:
///       factoryName: exampleFactoryName
///       properties:
///         description: Example description
///         pipelines:
///           - parameters:
///               OutputBlobNameList:
///                 - exampleoutput.csv
///             pipelineReference:
///               referenceName: examplePipeline
///               type: PipelineReference
///         recurrence:
///           endTime: 2018-06-16T00:55:14.905167Z
///           frequency: Minute
///           interval: 4
///           startTime: 2018-06-16T00:39:14.905167Z
///           timeZone: UTC
///         type: ScheduleTrigger
///       resourceGroupName: exampleResourceGroup
///       triggerName: exampleTrigger
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datafactory:Trigger exampleTrigger /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/triggers/{triggerName}
/// ```
class Trigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Properties of the trigger.
  late final pulumi.Output<BlobEventsTriggerResponse> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_datafactory_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BlobEventsTriggerResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlobEventsTriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
