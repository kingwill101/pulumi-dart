import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'virtual_machine_schedule_args.dart';
import 'week_details_response.dart';

/// A schedule.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualMachineSchedules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineSchedule = new AzureNative.DevTestLab.VirtualMachineSchedule("virtualMachineSchedule", new()
///     {
///         DailyRecurrence = new AzureNative.DevTestLab.Inputs.DayDetailsArgs
///         {
///             Time = "1900",
///         },
///         HourlyRecurrence = new AzureNative.DevTestLab.Inputs.HourDetailsArgs
///         {
///             Minute = 30,
///         },
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "LabVmsShutdown",
///         NotificationSettings = new AzureNative.DevTestLab.Inputs.NotificationSettingsArgs
///         {
///             EmailRecipient = "{email}",
///             NotificationLocale = "EN",
///             Status = AzureNative.DevTestLab.EnableStatus.Enabled,
///             TimeInMinutes = 30,
///             WebhookUrl = "{webhookUrl}",
///         },
///         ResourceGroupName = "resourceGroupName",
///         Status = AzureNative.DevTestLab.EnableStatus.Enabled,
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         TargetResourceId = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}",
///         TaskType = "LabVmsShutdownTask",
///         TimeZoneId = "Pacific Standard Time",
///         VirtualMachineName = "{vmName}",
///         WeeklyRecurrence = new AzureNative.DevTestLab.Inputs.WeekDetailsArgs
///         {
///             Time = "1700",
///             Weekdays = new[]
///             {
///                 "Friday",
///                 "Saturday",
///                 "Sunday",
///             },
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewVirtualMachineSchedule(ctx, "virtualMachineSchedule", &devtestlab.VirtualMachineScheduleArgs{
/// 			DailyRecurrence: &devtestlab.DayDetailsArgs{
/// 				Time: pulumi.String("1900"),
/// 			},
/// 			HourlyRecurrence: &devtestlab.HourDetailsArgs{
/// 				Minute: pulumi.Int(30),
/// 			},
/// 			LabName:  pulumi.String("{labName}"),
/// 			Location: pulumi.String("{location}"),
/// 			Name:     pulumi.String("LabVmsShutdown"),
/// 			NotificationSettings: &devtestlab.NotificationSettingsArgs{
/// 				EmailRecipient:     pulumi.String("{email}"),
/// 				NotificationLocale: pulumi.String("EN"),
/// 				Status:             pulumi.String(devtestlab.EnableStatusEnabled),
/// 				TimeInMinutes:      pulumi.Int(30),
/// 				WebhookUrl:         pulumi.String("{webhookUrl}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Status:            pulumi.String(devtestlab.EnableStatusEnabled),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			TargetResourceId:   pulumi.String("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}"),
/// 			TaskType:           pulumi.String("LabVmsShutdownTask"),
/// 			TimeZoneId:         pulumi.String("Pacific Standard Time"),
/// 			VirtualMachineName: pulumi.String("{vmName}"),
/// 			WeeklyRecurrence: &devtestlab.WeekDetailsArgs{
/// 				Time: pulumi.String("1700"),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Friday"),
/// 					pulumi.String("Saturday"),
/// 					pulumi.String("Sunday"),
/// 				},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.devtestlab.VirtualMachineSchedule;
/// import com.pulumi.azurenative.devtestlab.VirtualMachineScheduleArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.DayDetailsArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.HourDetailsArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.NotificationSettingsArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.WeekDetailsArgs;
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
///         var virtualMachineSchedule = new VirtualMachineSchedule("virtualMachineSchedule", VirtualMachineScheduleArgs.builder()
///             .dailyRecurrence(DayDetailsArgs.builder()
///                 .time("1900")
///                 .build())
///             .hourlyRecurrence(HourDetailsArgs.builder()
///                 .minute(30)
///                 .build())
///             .labName("{labName}")
///             .location("{location}")
///             .name("LabVmsShutdown")
///             .notificationSettings(NotificationSettingsArgs.builder()
///                 .emailRecipient("{email}")
///                 .notificationLocale("EN")
///                 .status("Enabled")
///                 .timeInMinutes(30)
///                 .webhookUrl("{webhookUrl}")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .status("Enabled")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .targetResourceId("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}")
///             .taskType("LabVmsShutdownTask")
///             .timeZoneId("Pacific Standard Time")
///             .virtualMachineName("{vmName}")
///             .weeklyRecurrence(WeekDetailsArgs.builder()
///                 .time("1700")
///                 .weekdays(
///                     "Friday",
///                     "Saturday",
///                     "Sunday")
///                 .build())
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
/// const virtualMachineSchedule = new azure_native.devtestlab.VirtualMachineSchedule("virtualMachineSchedule", {
///     dailyRecurrence: {
///         time: "1900",
///     },
///     hourlyRecurrence: {
///         minute: 30,
///     },
///     labName: "{labName}",
///     location: "{location}",
///     name: "LabVmsShutdown",
///     notificationSettings: {
///         emailRecipient: "{email}",
///         notificationLocale: "EN",
///         status: azure_native.devtestlab.EnableStatus.Enabled,
///         timeInMinutes: 30,
///         webhookUrl: "{webhookUrl}",
///     },
///     resourceGroupName: "resourceGroupName",
///     status: azure_native.devtestlab.EnableStatus.Enabled,
///     tags: {
///         tagName1: "tagValue1",
///     },
///     targetResourceId: "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}",
///     taskType: "LabVmsShutdownTask",
///     timeZoneId: "Pacific Standard Time",
///     virtualMachineName: "{vmName}",
///     weeklyRecurrence: {
///         time: "1700",
///         weekdays: [
///             "Friday",
///             "Saturday",
///             "Sunday",
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_schedule = azure_native.devtestlab.VirtualMachineSchedule("virtualMachineSchedule",
///     daily_recurrence={
///         "time": "1900",
///     },
///     hourly_recurrence={
///         "minute": 30,
///     },
///     lab_name="{labName}",
///     location="{location}",
///     name="LabVmsShutdown",
///     notification_settings={
///         "email_recipient": "{email}",
///         "notification_locale": "EN",
///         "status": azure_native.devtestlab.EnableStatus.ENABLED,
///         "time_in_minutes": 30,
///         "webhook_url": "{webhookUrl}",
///     },
///     resource_group_name="resourceGroupName",
///     status=azure_native.devtestlab.EnableStatus.ENABLED,
///     tags={
///         "tagName1": "tagValue1",
///     },
///     target_resource_id="/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}",
///     task_type="LabVmsShutdownTask",
///     time_zone_id="Pacific Standard Time",
///     virtual_machine_name="{vmName}",
///     weekly_recurrence={
///         "time": "1700",
///         "weekdays": [
///             "Friday",
///             "Saturday",
///             "Sunday",
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineSchedule:
///     type: azure-native:devtestlab:VirtualMachineSchedule
///     properties:
///       dailyRecurrence:
///         time: '1900'
///       hourlyRecurrence:
///         minute: 30
///       labName: '{labName}'
///       location: '{location}'
///       name: LabVmsShutdown
///       notificationSettings:
///         emailRecipient: '{email}'
///         notificationLocale: EN
///         status: Enabled
///         timeInMinutes: 30
///         webhookUrl: '{webhookUrl}'
///       resourceGroupName: resourceGroupName
///       status: Enabled
///       tags:
///         tagName1: tagValue1
///       targetResourceId: /subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualMachines/{vmName}
///       taskType: LabVmsShutdownTask
///       timeZoneId: Pacific Standard Time
///       virtualMachineName: '{vmName}'
///       weeklyRecurrence:
///         time: '1700'
///         weekdays:
///           - Friday
///           - Saturday
///           - Sunday
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
/// $ pulumi import azure-native:devtestlab:VirtualMachineSchedule LabVmsShutdown /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/virtualmachines/{virtualMachineName}/schedules/{name}
/// ```
class VirtualMachineSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the schedule.
  late final pulumi.Output<String> createdDate;
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  late final pulumi.Output<DayDetailsResponse?> dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  late final pulumi.Output<HourDetailsResponse?> hourlyRecurrence;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Notification settings.
  late final pulumi.Output<NotificationSettingsResponse?> notificationSettings;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The status of the schedule (i.e. Enabled, Disabled)
  late final pulumi.Output<String?> status;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource ID to which the schedule belongs
  late final pulumi.Output<String?> targetResourceId;
  /// The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  late final pulumi.Output<String?> taskType;
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection&lt;string&gt; TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  late final pulumi.Output<String?> timeZoneId;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  late final pulumi.Output<WeekDetailsResponse?> weeklyRecurrence;

  /// Creates a new [VirtualMachineSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineSchedule]. {@macro pulumi_devtestlab_virtual_machine_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineSchedule(
    String name, {
    VirtualMachineScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:VirtualMachineSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    dailyRecurrence = registerOutput<DayDetailsResponse?>('dailyRecurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DayDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hourlyRecurrence = registerOutput<HourDetailsResponse?>('hourlyRecurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HourDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notificationSettings = registerOutput<NotificationSettingsResponse?>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceId = registerOutput<String?>('targetResourceId');
    taskType = registerOutput<String?>('taskType');
    timeZoneId = registerOutput<String?>('timeZoneId');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    weeklyRecurrence = registerOutput<WeekDetailsResponse?>('weeklyRecurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WeekDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
