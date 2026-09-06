import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
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
///                     Parameters = new Dictionary<string, object?>
///                     {
///                         ["OutputBlobNameList"] = new[]
///                         {
///                             "exampleoutput.csv",
///                         },
///                     },
///                     PipelineReference = new AzureNative.DataFactory.Inputs.PipelineReferenceArgs
///                     {
///                         ReferenceName = "examplePipeline",
///                         Type = AzureNative.DataFactory.PipelineReferenceType.PipelineReference,
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
/// 						Parameters: pulumi.Any(map[string]interface{}{
/// 							"OutputBlobNameList": []string{
/// 								"exampleoutput.csv",
/// 							},
/// 						}),
/// 						PipelineReference: &datafactory.PipelineReferenceArgs{
/// 							ReferenceName: pulumi.String("examplePipeline"),
/// 							Type:          pulumi.String(datafactory.PipelineReferenceTypePipelineReference),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_trigger" "trigger" {
///   factory_name = "exampleFactoryName"
///   properties = {
///     "pipelines" = [{
///       "parameters" = {
///         "OutputBlobNameList" = ["exampleoutput.csv"]
///       }
///       "pipelineReference" = {
///         "referenceName" = "examplePipeline"
///         "type"          = "PipelineReference"
///       }
///     }]
///     "recurrence" = {
///       "endTime"   = "2018-06-16T00:55:13.8441801Z"
///       "frequency" = "Minute"
///       "interval"  = 4
///       "startTime" = "2018-06-16T00:39:13.8441801Z"
///       "timeZone"  = "UTC"
///     }
///     "type" = "ScheduleTrigger"
///   }
///   resource_group_name = "exampleResourceGroup"
///   trigger_name        = "exampleTrigger"
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
///         var trigger = new Trigger("trigger", TriggerArgs.builder()
///             .factoryName("exampleFactoryName")
///             .properties(ScheduleTriggerArgs.builder()
///                 .pipelines(TriggerPipelineReferenceArgs.builder()
///                     .parameters(Map.of("OutputBlobNameList", Arrays.asList("exampleoutput.csv")))
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
///                 type: azure_native.datafactory.PipelineReferenceType.PipelineReference,
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
///                 "type": azure_native.datafactory.PipelineReferenceType.PIPELINE_REFERENCE,
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
///                     Parameters = new Dictionary<string, object?>
///                     {
///                         ["OutputBlobNameList"] = new[]
///                         {
///                             "exampleoutput.csv",
///                         },
///                     },
///                     PipelineReference = new AzureNative.DataFactory.Inputs.PipelineReferenceArgs
///                     {
///                         ReferenceName = "examplePipeline",
///                         Type = AzureNative.DataFactory.PipelineReferenceType.PipelineReference,
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
/// 						Parameters: pulumi.Any(map[string]interface{}{
/// 							"OutputBlobNameList": []string{
/// 								"exampleoutput.csv",
/// 							},
/// 						}),
/// 						PipelineReference: &datafactory.PipelineReferenceArgs{
/// 							ReferenceName: pulumi.String("examplePipeline"),
/// 							Type:          pulumi.String(datafactory.PipelineReferenceTypePipelineReference),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_trigger" "trigger" {
///   factory_name = "exampleFactoryName"
///   properties = {
///     "description" = "Example description"
///     "pipelines" = [{
///       "parameters" = {
///         "OutputBlobNameList" = ["exampleoutput.csv"]
///       }
///       "pipelineReference" = {
///         "referenceName" = "examplePipeline"
///         "type"          = "PipelineReference"
///       }
///     }]
///     "recurrence" = {
///       "endTime"   = "2018-06-16T00:55:14.905167Z"
///       "frequency" = "Minute"
///       "interval"  = 4
///       "startTime" = "2018-06-16T00:39:14.905167Z"
///       "timeZone"  = "UTC"
///     }
///     "type" = "ScheduleTrigger"
///   }
///   resource_group_name = "exampleResourceGroup"
///   trigger_name        = "exampleTrigger"
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
///         var trigger = new Trigger("trigger", TriggerArgs.builder()
///             .factoryName("exampleFactoryName")
///             .properties(ScheduleTriggerArgs.builder()
///                 .description("Example description")
///                 .pipelines(TriggerPipelineReferenceArgs.builder()
///                     .parameters(Map.of("OutputBlobNameList", Arrays.asList("exampleoutput.csv")))
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
///                 type: azure_native.datafactory.PipelineReferenceType.PipelineReference,
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
///                 "type": azure_native.datafactory.PipelineReferenceType.PIPELINE_REFERENCE,
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
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the trigger.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
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
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Trigger] resource.
  Trigger.reference(String urn)
    : super(
        'azure-native:datafactory:Trigger',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
