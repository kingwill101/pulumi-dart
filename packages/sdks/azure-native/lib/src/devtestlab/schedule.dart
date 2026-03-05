import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'schedule_args.dart';
import 'week_details_response.dart';

/// A schedule.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Schedules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedule = new AzureNative.DevTestLab.Schedule("schedule", new()
///     {
///         DailyRecurrence = new AzureNative.DevTestLab.Inputs.DayDetailsArgs
///         {
///             Time = "{timeOfTheDayTheScheduleWillOccurEveryDay}",
///         },
///         HourlyRecurrence = new AzureNative.DevTestLab.Inputs.HourDetailsArgs
///         {
///             Minute = 30,
///         },
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "{scheduleName}",
///         NotificationSettings = new AzureNative.DevTestLab.Inputs.NotificationSettingsArgs
///         {
///             EmailRecipient = "{email}",
///             NotificationLocale = "EN",
///             Status = "{Enabled|Disabled}",
///             TimeInMinutes = 15,
///             WebhookUrl = "{webhookUrl}",
///         },
///         ResourceGroupName = "resourceGroupName",
///         Status = "{Enabled|Disabled}",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         TargetResourceId = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}",
///         TaskType = "{myLabVmTaskType}",
///         TimeZoneId = "Pacific Standard Time",
///         WeeklyRecurrence = new AzureNative.DevTestLab.Inputs.WeekDetailsArgs
///         {
///             Time = "{timeOfTheDayTheScheduleWillOccurOnThoseDays}",
///             Weekdays = new[]
///             {
///                 "Monday",
///                 "Wednesday",
///                 "Friday",
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
/// 		_, err := devtestlab.NewSchedule(ctx, "schedule", &devtestlab.ScheduleArgs{
/// 			DailyRecurrence: &devtestlab.DayDetailsArgs{
/// 				Time: pulumi.String("{timeOfTheDayTheScheduleWillOccurEveryDay}"),
/// 			},
/// 			HourlyRecurrence: &devtestlab.HourDetailsArgs{
/// 				Minute: pulumi.Int(30),
/// 			},
/// 			LabName:  pulumi.String("{labName}"),
/// 			Location: pulumi.String("{location}"),
/// 			Name:     pulumi.String("{scheduleName}"),
/// 			NotificationSettings: &devtestlab.NotificationSettingsArgs{
/// 				EmailRecipient:     pulumi.String("{email}"),
/// 				NotificationLocale: pulumi.String("EN"),
/// 				Status:             pulumi.String("{Enabled|Disabled}"),
/// 				TimeInMinutes:      pulumi.Int(15),
/// 				WebhookUrl:         pulumi.String("{webhookUrl}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Status:            pulumi.String("{Enabled|Disabled}"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			TargetResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}"),
/// 			TaskType:         pulumi.String("{myLabVmTaskType}"),
/// 			TimeZoneId:       pulumi.String("Pacific Standard Time"),
/// 			WeeklyRecurrence: &devtestlab.WeekDetailsArgs{
/// 				Time: pulumi.String("{timeOfTheDayTheScheduleWillOccurOnThoseDays}"),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Monday"),
/// 					pulumi.String("Wednesday"),
/// 					pulumi.String("Friday"),
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
/// import com.pulumi.azurenative.devtestlab.Schedule;
/// import com.pulumi.azurenative.devtestlab.ScheduleArgs;
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
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .dailyRecurrence(DayDetailsArgs.builder()
///                 .time("{timeOfTheDayTheScheduleWillOccurEveryDay}")
///                 .build())
///             .hourlyRecurrence(HourDetailsArgs.builder()
///                 .minute(30)
///                 .build())
///             .labName("{labName}")
///             .location("{location}")
///             .name("{scheduleName}")
///             .notificationSettings(NotificationSettingsArgs.builder()
///                 .emailRecipient("{email}")
///                 .notificationLocale("EN")
///                 .status("{Enabled|Disabled}")
///                 .timeInMinutes(15)
///                 .webhookUrl("{webhookUrl}")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .status("{Enabled|Disabled}")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .targetResourceId("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}")
///             .taskType("{myLabVmTaskType}")
///             .timeZoneId("Pacific Standard Time")
///             .weeklyRecurrence(WeekDetailsArgs.builder()
///                 .time("{timeOfTheDayTheScheduleWillOccurOnThoseDays}")
///                 .weekdays(
///                     "Monday",
///                     "Wednesday",
///                     "Friday")
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
/// const schedule = new azure_native.devtestlab.Schedule("schedule", {
///     dailyRecurrence: {
///         time: "{timeOfTheDayTheScheduleWillOccurEveryDay}",
///     },
///     hourlyRecurrence: {
///         minute: 30,
///     },
///     labName: "{labName}",
///     location: "{location}",
///     name: "{scheduleName}",
///     notificationSettings: {
///         emailRecipient: "{email}",
///         notificationLocale: "EN",
///         status: "{Enabled|Disabled}",
///         timeInMinutes: 15,
///         webhookUrl: "{webhookUrl}",
///     },
///     resourceGroupName: "resourceGroupName",
///     status: "{Enabled|Disabled}",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     targetResourceId: "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}",
///     taskType: "{myLabVmTaskType}",
///     timeZoneId: "Pacific Standard Time",
///     weeklyRecurrence: {
///         time: "{timeOfTheDayTheScheduleWillOccurOnThoseDays}",
///         weekdays: [
///             "Monday",
///             "Wednesday",
///             "Friday",
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
/// schedule = azure_native.devtestlab.Schedule("schedule",
///     daily_recurrence={
///         "time": "{timeOfTheDayTheScheduleWillOccurEveryDay}",
///     },
///     hourly_recurrence={
///         "minute": 30,
///     },
///     lab_name="{labName}",
///     location="{location}",
///     name="{scheduleName}",
///     notification_settings={
///         "email_recipient": "{email}",
///         "notification_locale": "EN",
///         "status": "{Enabled|Disabled}",
///         "time_in_minutes": 15,
///         "webhook_url": "{webhookUrl}",
///     },
///     resource_group_name="resourceGroupName",
///     status="{Enabled|Disabled}",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     target_resource_id="/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}",
///     task_type="{myLabVmTaskType}",
///     time_zone_id="Pacific Standard Time",
///     weekly_recurrence={
///         "time": "{timeOfTheDayTheScheduleWillOccurOnThoseDays}",
///         "weekdays": [
///             "Monday",
///             "Wednesday",
///             "Friday",
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   schedule:
///     type: azure-native:devtestlab:Schedule
///     properties:
///       dailyRecurrence:
///         time: '{timeOfTheDayTheScheduleWillOccurEveryDay}'
///       hourlyRecurrence:
///         minute: 30
///       labName: '{labName}'
///       location: '{location}'
///       name: '{scheduleName}'
///       notificationSettings:
///         emailRecipient: '{email}'
///         notificationLocale: EN
///         status: '{Enabled|Disabled}'
///         timeInMinutes: 15
///         webhookUrl: '{webhookUrl}'
///       resourceGroupName: resourceGroupName
///       status: '{Enabled|Disabled}'
///       tags:
///         tagName1: tagValue1
///       targetResourceId: /subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}
///       taskType: '{myLabVmTaskType}'
///       timeZoneId: Pacific Standard Time
///       weeklyRecurrence:
///         time: '{timeOfTheDayTheScheduleWillOccurOnThoseDays}'
///         weekdays:
///           - Monday
///           - Wednesday
///           - Friday
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
/// $ pulumi import azure-native:devtestlab:Schedule {scheduleName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/schedules/{name}
/// ```
class Schedule extends pulumi.CustomResource {
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

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_devtestlab_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Schedule',
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
