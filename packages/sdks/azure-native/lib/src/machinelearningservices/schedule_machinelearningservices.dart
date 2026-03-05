import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Schedule.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedule = new AzureNative.MachineLearningServices.Schedule("schedule", new()
///     {
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         ScheduleProperties = new AzureNative.MachineLearningServices.Inputs.ScheduleArgs
///         {
///             Action = new AzureNative.MachineLearningServices.Inputs.EndpointScheduleActionArgs
///             {
///                 ActionType = "InvokeBatchEndpoint",
///                 EndpointInvocationDefinition =
///                 {
///                     { "9965593e-526f-4b89-bb36-761138cf2794", null },
///                 },
///             },
///             Description = "string",
///             DisplayName = "string",
///             IsEnabled = false,
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///             Trigger = new AzureNative.MachineLearningServices.Inputs.CronTriggerArgs
///             {
///                 EndTime = "string",
///                 Expression = "string",
///                 StartTime = "string",
///                 TimeZone = "string",
///                 TriggerType = "Cron",
///             },
///         },
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewSchedule(ctx, "schedule", &machinelearningservices.ScheduleArgs{
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			ScheduleProperties: &machinelearningservices.ScheduleTypeArgs{
/// 				Action: machinelearningservices.EndpointScheduleAction{
/// 					ActionType: "InvokeBatchEndpoint",
/// 					EndpointInvocationDefinition: map[string]interface{}{
/// 						"9965593e-526f-4b89-bb36-761138cf2794": nil,
/// 					},
/// 				},
/// 				Description: pulumi.String("string"),
/// 				DisplayName: pulumi.String("string"),
/// 				IsEnabled:   pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Trigger: machinelearningservices.CronTrigger{
/// 					EndTime:     "string",
/// 					Expression:  "string",
/// 					StartTime:   "string",
/// 					TimeZone:    "string",
/// 					TriggerType: "Cron",
/// 				},
/// 			},
/// 			WorkspaceName: pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.Schedule;
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
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .name("string")
///             .resourceGroupName("test-rg")
///             .scheduleProperties(ScheduleArgs.builder()
///                 .action(EndpointScheduleActionArgs.builder()
///                     .actionType("InvokeBatchEndpoint")
///                     .endpointInvocationDefinition(Map.of("9965593e-526f-4b89-bb36-761138cf2794", null))
///                     .build())
///                 .description("string")
///                 .displayName("string")
///                 .isEnabled(false)
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .trigger(CronTriggerArgs.builder()
///                     .endTime("string")
///                     .expression("string")
///                     .startTime("string")
///                     .timeZone("string")
///                     .triggerType("Cron")
///                     .build())
///                 .build())
///             .workspaceName("my-aml-workspace")
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
/// const schedule = new azure_native.machinelearningservices.Schedule("schedule", {
///     name: "string",
///     resourceGroupName: "test-rg",
///     scheduleProperties: {
///         action: {
///             actionType: "InvokeBatchEndpoint",
///             endpointInvocationDefinition: {
///                 "9965593e-526f-4b89-bb36-761138cf2794": null,
///             },
///         },
///         description: "string",
///         displayName: "string",
///         isEnabled: false,
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///         trigger: {
///             endTime: "string",
///             expression: "string",
///             startTime: "string",
///             timeZone: "string",
///             triggerType: "Cron",
///         },
///     },
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schedule = azure_native.machinelearningservices.Schedule("schedule",
///     name="string",
///     resource_group_name="test-rg",
///     schedule_properties={
///         "action": {
///             "action_type": "InvokeBatchEndpoint",
///             "endpoint_invocation_definition": {
///                 "9965593e-526f-4b89-bb36-761138cf2794": None,
///             },
///         },
///         "description": "string",
///         "display_name": "string",
///         "is_enabled": False,
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///         "trigger": {
///             "end_time": "string",
///             "expression": "string",
///             "start_time": "string",
///             "time_zone": "string",
///             "trigger_type": "Cron",
///         },
///     },
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   schedule:
///     type: azure-native:machinelearningservices:Schedule
///     properties:
///       name: string
///       resourceGroupName: test-rg
///       scheduleProperties:
///         action:
///           actionType: InvokeBatchEndpoint
///           endpointInvocationDefinition:
///             9965593e-526f-4b89-bb36-761138cf2794: null
///         description: string
///         displayName: string
///         isEnabled: false
///         properties:
///           string: string
///         tags:
///           string: string
///         trigger:
///           endTime: string
///           expression: string
///           startTime: string
///           timeZone: string
///           triggerType: Cron
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:Schedule string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/schedules/{name}
/// ```
class ScheduleMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ScheduleResponse> scheduleProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScheduleMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduleMachinelearningservices]. {@macro pulumi_machinelearningservices_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduleMachinelearningservices(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    scheduleProperties = registerOutput<ScheduleResponse>('scheduleProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
