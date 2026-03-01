import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'service_fabric_schedule_args.dart';
import 'week_details_response.dart';

/// A schedule.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceFabricSchedules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceFabricSchedule = new AzureNative.DevTestLab.ServiceFabricSchedule("serviceFabricSchedule", new()
///     {
///         DailyRecurrence = new AzureNative.DevTestLab.Inputs.DayDetailsArgs
///         {
///             Time = "19:00",
///         },
///         HourlyRecurrence = new AzureNative.DevTestLab.Inputs.HourDetailsArgs
///         {
///             Minute = 0,
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
///             WebhookUrl = "{webhoolUrl}",
///         },
///         ResourceGroupName = "resourceGroupName",
///         ServiceFabricName = "{serviceFrabicName}",
///         Status = "{Enabled|Disabled}",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         TargetResourceId = "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}",
///         TaskType = "{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}",
///         TimeZoneId = "Pacific Standard Time",
///         UserName = "@me",
///         WeeklyRecurrence = new AzureNative.DevTestLab.Inputs.WeekDetailsArgs
///         {
///             Time = "19:00",
///             Weekdays = new[]
///             {
///                 "Monday",
///                 "Tuesday",
///                 "Wednesday",
///                 "Thursday",
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
/// 		_, err := devtestlab.NewServiceFabricSchedule(ctx, "serviceFabricSchedule", &devtestlab.ServiceFabricScheduleArgs{
/// 			DailyRecurrence: &devtestlab.DayDetailsArgs{
/// 				Time: pulumi.String("19:00"),
/// 			},
/// 			HourlyRecurrence: &devtestlab.HourDetailsArgs{
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			LabName:  pulumi.String("{labName}"),
/// 			Location: pulumi.String("{location}"),
/// 			Name:     pulumi.String("{scheduleName}"),
/// 			NotificationSettings: &devtestlab.NotificationSettingsArgs{
/// 				EmailRecipient:     pulumi.String("{email}"),
/// 				NotificationLocale: pulumi.String("EN"),
/// 				Status:             pulumi.String("{Enabled|Disabled}"),
/// 				TimeInMinutes:      pulumi.Int(15),
/// 				WebhookUrl:         pulumi.String("{webhoolUrl}"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			ServiceFabricName: pulumi.String("{serviceFrabicName}"),
/// 			Status:            pulumi.String("{Enabled|Disabled}"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			TargetResourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}"),
/// 			TaskType:         pulumi.String("{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}"),
/// 			TimeZoneId:       pulumi.String("Pacific Standard Time"),
/// 			UserName:         pulumi.String("@me"),
/// 			WeeklyRecurrence: &devtestlab.WeekDetailsArgs{
/// 				Time: pulumi.String("19:00"),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Monday"),
/// 					pulumi.String("Tuesday"),
/// 					pulumi.String("Wednesday"),
/// 					pulumi.String("Thursday"),
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
/// import com.pulumi.azurenative.devtestlab.ServiceFabricSchedule;
/// import com.pulumi.azurenative.devtestlab.ServiceFabricScheduleArgs;
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
///         var serviceFabricSchedule = new ServiceFabricSchedule("serviceFabricSchedule", ServiceFabricScheduleArgs.builder()
///             .dailyRecurrence(DayDetailsArgs.builder()
///                 .time("19:00")
///                 .build())
///             .hourlyRecurrence(HourDetailsArgs.builder()
///                 .minute(0)
///                 .build())
///             .labName("{labName}")
///             .location("{location}")
///             .name("{scheduleName}")
///             .notificationSettings(NotificationSettingsArgs.builder()
///                 .emailRecipient("{email}")
///                 .notificationLocale("EN")
///                 .status("{Enabled|Disabled}")
///                 .timeInMinutes(15)
///                 .webhookUrl("{webhoolUrl}")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .serviceFabricName("{serviceFrabicName}")
///             .status("{Enabled|Disabled}")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .targetResourceId("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}")
///             .taskType("{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}")
///             .timeZoneId("Pacific Standard Time")
///             .userName("@me")
///             .weeklyRecurrence(WeekDetailsArgs.builder()
///                 .time("19:00")
///                 .weekdays(
///                     "Monday",
///                     "Tuesday",
///                     "Wednesday",
///                     "Thursday",
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
/// const serviceFabricSchedule = new azure_native.devtestlab.ServiceFabricSchedule("serviceFabricSchedule", {
///     dailyRecurrence: {
///         time: "19:00",
///     },
///     hourlyRecurrence: {
///         minute: 0,
///     },
///     labName: "{labName}",
///     location: "{location}",
///     name: "{scheduleName}",
///     notificationSettings: {
///         emailRecipient: "{email}",
///         notificationLocale: "EN",
///         status: "{Enabled|Disabled}",
///         timeInMinutes: 15,
///         webhookUrl: "{webhoolUrl}",
///     },
///     resourceGroupName: "resourceGroupName",
///     serviceFabricName: "{serviceFrabicName}",
///     status: "{Enabled|Disabled}",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     targetResourceId: "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}",
///     taskType: "{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}",
///     timeZoneId: "Pacific Standard Time",
///     userName: "@me",
///     weeklyRecurrence: {
///         time: "19:00",
///         weekdays: [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
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
/// service_fabric_schedule = azure_native.devtestlab.ServiceFabricSchedule("serviceFabricSchedule",
///     daily_recurrence={
///         "time": "19:00",
///     },
///     hourly_recurrence={
///         "minute": 0,
///     },
///     lab_name="{labName}",
///     location="{location}",
///     name="{scheduleName}",
///     notification_settings={
///         "email_recipient": "{email}",
///         "notification_locale": "EN",
///         "status": "{Enabled|Disabled}",
///         "time_in_minutes": 15,
///         "webhook_url": "{webhoolUrl}",
///     },
///     resource_group_name="resourceGroupName",
///     service_fabric_name="{serviceFrabicName}",
///     status="{Enabled|Disabled}",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     target_resource_id="/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}",
///     task_type="{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}",
///     time_zone_id="Pacific Standard Time",
///     user_name="@me",
///     weekly_recurrence={
///         "time": "19:00",
///         "weekdays": [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
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
///   serviceFabricSchedule:
///     type: azure-native:devtestlab:ServiceFabricSchedule
///     properties:
///       dailyRecurrence:
///         time: 19:00
///       hourlyRecurrence:
///         minute: 0
///       labName: '{labName}'
///       location: '{location}'
///       name: '{scheduleName}'
///       notificationSettings:
///         emailRecipient: '{email}'
///         notificationLocale: EN
///         status: '{Enabled|Disabled}'
///         timeInMinutes: 15
///         webhookUrl: '{webhoolUrl}'
///       resourceGroupName: resourceGroupName
///       serviceFabricName: '{serviceFrabicName}'
///       status: '{Enabled|Disabled}'
///       tags:
///         tagName1: tagValue1
///       targetResourceId: /subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.DevTestLab/labs/{labName}/users/{uniqueIdentifier}/servicefabrics/{serviceFrabicName}
///       taskType: '{Unknown|LabVmsShutdownTask|LabVmsStartupTask|LabVmReclamationTask|ComputeVmShutdownTask}'
///       timeZoneId: Pacific Standard Time
///       userName: '@me'
///       weeklyRecurrence:
///         time: 19:00
///         weekdays:
///           - Monday
///           - Tuesday
///           - Wednesday
///           - Thursday
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
/// $ pulumi import azure-native:devtestlab:ServiceFabricSchedule {scheduleName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{userName}/servicefabrics/{serviceFabricName}/schedules/{name}
/// ```
class ServiceFabricSchedule extends pulumi.CustomResource {
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
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  late final pulumi.Output<String?> timeZoneId;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  late final pulumi.Output<WeekDetailsResponse?> weeklyRecurrence;

  /// Creates a new [ServiceFabricSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceFabricSchedule]. {@macro pulumi_devtestlab_service_fabric_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceFabricSchedule(
    String name, {
    ServiceFabricScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:ServiceFabricSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.dailyRecurrence = registerOutput<DayDetailsResponse?>('dailyRecurrence');
    this.hourlyRecurrence = registerOutput<HourDetailsResponse?>('hourlyRecurrence');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.notificationSettings = registerOutput<NotificationSettingsResponse?>('notificationSettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetResourceId = registerOutput<String?>('targetResourceId');
    this.taskType = registerOutput<String?>('taskType');
    this.timeZoneId = registerOutput<String?>('timeZoneId');
    this.type = registerOutput<String>('type');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    this.weeklyRecurrence = registerOutput<WeekDetailsResponse?>('weeklyRecurrence');
  }
}
