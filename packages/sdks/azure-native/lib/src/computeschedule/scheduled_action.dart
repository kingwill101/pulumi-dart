import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_args.dart';
import 'scheduled_action_properties_response.dart';
import 'system_data_response.dart';

/// The scheduled action resource
///
/// Uses Azure REST API version 2025-04-15-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-03-01-preview, 2026-04-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native computeschedule [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScheduledActions_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledAction = new AzureNative.ComputeSchedule.ScheduledAction("scheduledAction", new()
///     {
///         Location = "vmuhgdgipeypkcv",
///         Properties = new AzureNative.ComputeSchedule.Inputs.ScheduledActionPropertiesArgs
///         {
///             ActionType = AzureNative.ComputeSchedule.ActionType.Start,
///             Disabled = true,
///             EndTime = "2025-04-17T00:23:55.286Z",
///             NotificationSettings = new[]
///             {
///                 new AzureNative.ComputeSchedule.Inputs.NotificationPropertiesArgs
///                 {
///                     Destination = "wbhryycyolvnypjxzlawwvb",
///                     Disabled = true,
///                     Language = AzureNative.ComputeSchedule.Language.EnUs,
///                     Type = AzureNative.ComputeSchedule.NotificationType.Email,
///                 },
///             },
///             ResourceType = AzureNative.ComputeSchedule.ResourceType.VirtualMachine,
///             Schedule = new AzureNative.ComputeSchedule.Inputs.ScheduledActionsScheduleArgs
///             {
///                 DeadlineType = AzureNative.ComputeSchedule.DeadlineType.Unknown,
///                 ExecutionParameters = new AzureNative.ComputeSchedule.Inputs.ExecutionParametersArgs
///                 {
///                     OptimizationPreference = AzureNative.ComputeSchedule.OptimizationPreference.Cost,
///                     RetryPolicy = new AzureNative.ComputeSchedule.Inputs.RetryPolicyArgs
///                     {
///                         RetryCount = 17,
///                         RetryWindowInMinutes = 29,
///                     },
///                 },
///                 RequestedDaysOfTheMonth = new[]
///                 {
///                     15,
///                 },
///                 RequestedMonths = new[]
///                 {
///                     AzureNative.ComputeSchedule.Month.January,
///                 },
///                 RequestedWeekDays = new[]
///                 {
///                     AzureNative.ComputeSchedule.WeekDay.Monday,
///                 },
///                 ScheduledTime = "19:00:00",
///                 TimeZone = "g",
///             },
///             StartTime = "2025-04-17T00:23:55.281Z",
///         },
///         ResourceGroupName = "rgcomputeschedule",
///         ScheduledActionName = "myScheduledAction",
///         Tags =
///         {
///             { "key2102", "obwsqwdydpkscnzceopxgkrhrxtdhv" },
///         },
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
/// 	computeschedule "github.com/pulumi/pulumi-azure-native-sdk/computeschedule/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := computeschedule.NewScheduledAction(ctx, "scheduledAction", &computeschedule.ScheduledActionArgs{
/// 			Location: pulumi.String("vmuhgdgipeypkcv"),
/// 			Properties: &computeschedule.ScheduledActionPropertiesArgs{
/// 				ActionType: pulumi.String(computeschedule.ActionTypeStart),
/// 				Disabled:   pulumi.Bool(true),
/// 				EndTime:    pulumi.String("2025-04-17T00:23:55.286Z"),
/// 				NotificationSettings: computeschedule.NotificationPropertiesArray{
/// 					&computeschedule.NotificationPropertiesArgs{
/// 						Destination: pulumi.String("wbhryycyolvnypjxzlawwvb"),
/// 						Disabled:    pulumi.Bool(true),
/// 						Language:    pulumi.String(computeschedule.LanguageEnUs),
/// 						Type:        pulumi.String(computeschedule.NotificationTypeEmail),
/// 					},
/// 				},
/// 				ResourceType: pulumi.String(computeschedule.ResourceTypeVirtualMachine),
/// 				Schedule: &computeschedule.ScheduledActionsScheduleArgs{
/// 					DeadlineType: pulumi.String(computeschedule.DeadlineTypeUnknown),
/// 					ExecutionParameters: &computeschedule.ExecutionParametersArgs{
/// 						OptimizationPreference: pulumi.String(computeschedule.OptimizationPreferenceCost),
/// 						RetryPolicy: &computeschedule.RetryPolicyArgs{
/// 							RetryCount:           pulumi.Int(17),
/// 							RetryWindowInMinutes: pulumi.Int(29),
/// 						},
/// 					},
/// 					RequestedDaysOfTheMonth: pulumi.IntArray{
/// 						pulumi.Int(15),
/// 					},
/// 					RequestedMonths: pulumi.StringArray{
/// 						pulumi.String(computeschedule.MonthJanuary),
/// 					},
/// 					RequestedWeekDays: pulumi.StringArray{
/// 						pulumi.String(computeschedule.WeekDayMonday),
/// 					},
/// 					ScheduledTime: pulumi.String("19:00:00"),
/// 					TimeZone:      pulumi.String("g"),
/// 				},
/// 				StartTime: pulumi.String("2025-04-17T00:23:55.281Z"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("rgcomputeschedule"),
/// 			ScheduledActionName: pulumi.String("myScheduledAction"),
/// 			Tags: pulumi.StringMap{
/// 				"key2102": pulumi.String("obwsqwdydpkscnzceopxgkrhrxtdhv"),
/// 			},
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
/// resource "azure-native_computeschedule_scheduledaction" "scheduledAction" {
///   location = "vmuhgdgipeypkcv"
///   properties = {
///     action_type = "Start"
///     disabled    = true
///     end_time    = "2025-04-17T00:23:55.286Z"
///     notification_settings = [{
///       "destination" = "wbhryycyolvnypjxzlawwvb"
///       "disabled"    = true
///       "language"    = "en-us"
///       "type"        = "Email"
///     }]
///     resource_type = "VirtualMachine"
///     schedule = {
///       deadline_type = "Unknown"
///       execution_parameters = {
///         optimization_preference = "Cost"
///         retry_policy = {
///           retry_count             = 17
///           retry_window_in_minutes = 29
///         }
///       }
///       requested_days_of_the_month = [15]
///       requested_months            = ["January"]
///       requested_week_days         = ["Monday"]
///       scheduled_time              = "19:00:00"
///       time_zone                   = "g"
///     }
///     start_time = "2025-04-17T00:23:55.281Z"
///   }
///   resource_group_name   = "rgcomputeschedule"
///   scheduled_action_name = "myScheduledAction"
///   tags = {
///     "key2102" = "obwsqwdydpkscnzceopxgkrhrxtdhv"
///   }
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
/// import com.pulumi.azurenative.computeschedule.ScheduledAction;
/// import com.pulumi.azurenative.computeschedule.ScheduledActionArgs;
/// import com.pulumi.azurenative.computeschedule.inputs.ScheduledActionPropertiesArgs;
/// import com.pulumi.azurenative.computeschedule.inputs.ScheduledActionsScheduleArgs;
/// import com.pulumi.azurenative.computeschedule.inputs.ExecutionParametersArgs;
/// import com.pulumi.azurenative.computeschedule.inputs.RetryPolicyArgs;
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
///         var scheduledAction = new ScheduledAction("scheduledAction", ScheduledActionArgs.builder()
///             .location("vmuhgdgipeypkcv")
///             .properties(ScheduledActionPropertiesArgs.builder()
///                 .actionType("Start")
///                 .disabled(true)
///                 .endTime("2025-04-17T00:23:55.286Z")
///                 .notificationSettings(NotificationPropertiesArgs.builder()
///                     .destination("wbhryycyolvnypjxzlawwvb")
///                     .disabled(true)
///                     .language("en-us")
///                     .type("Email")
///                     .build())
///                 .resourceType("VirtualMachine")
///                 .schedule(ScheduledActionsScheduleArgs.builder()
///                     .deadlineType("Unknown")
///                     .executionParameters(ExecutionParametersArgs.builder()
///                         .optimizationPreference("Cost")
///                         .retryPolicy(RetryPolicyArgs.builder()
///                             .retryCount(17)
///                             .retryWindowInMinutes(29)
///                             .build())
///                         .build())
///                     .requestedDaysOfTheMonth(15)
///                     .requestedMonths("January")
///                     .requestedWeekDays("Monday")
///                     .scheduledTime("19:00:00")
///                     .timeZone("g")
///                     .build())
///                 .startTime("2025-04-17T00:23:55.281Z")
///                 .build())
///             .resourceGroupName("rgcomputeschedule")
///             .scheduledActionName("myScheduledAction")
///             .tags(Map.of("key2102", "obwsqwdydpkscnzceopxgkrhrxtdhv"))
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
/// const scheduledAction = new azure_native.computeschedule.ScheduledAction("scheduledAction", {
///     location: "vmuhgdgipeypkcv",
///     properties: {
///         actionType: azure_native.computeschedule.ActionType.Start,
///         disabled: true,
///         endTime: "2025-04-17T00:23:55.286Z",
///         notificationSettings: [{
///             destination: "wbhryycyolvnypjxzlawwvb",
///             disabled: true,
///             language: azure_native.computeschedule.Language.EnUs,
///             type: azure_native.computeschedule.NotificationType.Email,
///         }],
///         resourceType: azure_native.computeschedule.ResourceType.VirtualMachine,
///         schedule: {
///             deadlineType: azure_native.computeschedule.DeadlineType.Unknown,
///             executionParameters: {
///                 optimizationPreference: azure_native.computeschedule.OptimizationPreference.Cost,
///                 retryPolicy: {
///                     retryCount: 17,
///                     retryWindowInMinutes: 29,
///                 },
///             },
///             requestedDaysOfTheMonth: [15],
///             requestedMonths: [azure_native.computeschedule.Month.January],
///             requestedWeekDays: [azure_native.computeschedule.WeekDay.Monday],
///             scheduledTime: "19:00:00",
///             timeZone: "g",
///         },
///         startTime: "2025-04-17T00:23:55.281Z",
///     },
///     resourceGroupName: "rgcomputeschedule",
///     scheduledActionName: "myScheduledAction",
///     tags: {
///         key2102: "obwsqwdydpkscnzceopxgkrhrxtdhv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_action = azure_native.computeschedule.ScheduledAction("scheduledAction",
///     location="vmuhgdgipeypkcv",
///     properties={
///         "action_type": azure_native.computeschedule.ActionType.START,
///         "disabled": True,
///         "end_time": "2025-04-17T00:23:55.286Z",
///         "notification_settings": [{
///             "destination": "wbhryycyolvnypjxzlawwvb",
///             "disabled": True,
///             "language": azure_native.computeschedule.Language.EN_US,
///             "type": azure_native.computeschedule.NotificationType.EMAIL,
///         }],
///         "resource_type": azure_native.computeschedule.ResourceType.VIRTUAL_MACHINE,
///         "schedule": {
///             "deadline_type": azure_native.computeschedule.DeadlineType.UNKNOWN,
///             "execution_parameters": {
///                 "optimization_preference": azure_native.computeschedule.OptimizationPreference.COST,
///                 "retry_policy": {
///                     "retry_count": 17,
///                     "retry_window_in_minutes": 29,
///                 },
///             },
///             "requested_days_of_the_month": [15],
///             "requested_months": [azure_native.computeschedule.Month.JANUARY],
///             "requested_week_days": [azure_native.computeschedule.WeekDay.MONDAY],
///             "scheduled_time": "19:00:00",
///             "time_zone": "g",
///         },
///         "start_time": "2025-04-17T00:23:55.281Z",
///     },
///     resource_group_name="rgcomputeschedule",
///     scheduled_action_name="myScheduledAction",
///     tags={
///         "key2102": "obwsqwdydpkscnzceopxgkrhrxtdhv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledAction:
///     type: azure-native:computeschedule:ScheduledAction
///     properties:
///       location: vmuhgdgipeypkcv
///       properties:
///         actionType: Start
///         disabled: true
///         endTime: 2025-04-17T00:23:55.286Z
///         notificationSettings:
///           - destination: wbhryycyolvnypjxzlawwvb
///             disabled: true
///             language: en-us
///             type: Email
///         resourceType: VirtualMachine
///         schedule:
///           deadlineType: Unknown
///           executionParameters:
///             optimizationPreference: Cost
///             retryPolicy:
///               retryCount: 17
///               retryWindowInMinutes: 29
///           requestedDaysOfTheMonth:
///             - 15
///           requestedMonths:
///             - January
///           requestedWeekDays:
///             - Monday
///           scheduledTime: 19:00:00
///           timeZone: g
///         startTime: 2025-04-17T00:23:55.281Z
///       resourceGroupName: rgcomputeschedule
///       scheduledActionName: myScheduledAction
///       tags:
///         key2102: obwsqwdydpkscnzceopxgkrhrxtdhv
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
/// $ pulumi import azure-native:computeschedule:ScheduledAction a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ComputeSchedule/scheduledActions/{scheduledActionName}
/// ```
class ScheduledAction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ScheduledActionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScheduledAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledAction]. {@macro pulumi_computeschedule_scheduled_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledAction(
    String name, {
    ScheduledActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:computeschedule:ScheduledAction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ScheduledActionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledActionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ScheduledAction] resource.
  ScheduledAction.reference(String urn)
    : super(
        'azure-native:computeschedule:ScheduledAction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ScheduledActionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledActionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
