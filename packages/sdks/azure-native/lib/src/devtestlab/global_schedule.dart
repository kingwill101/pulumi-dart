import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details_response.dart';
import 'global_schedule_args.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'week_details_response.dart';

/// A schedule.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GlobalSchedules_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalSchedule = new AzureNative.DevTestLab.GlobalSchedule("globalSchedule", new()
///     {
///         Name = "labvmautostart",
///         ResourceGroupName = "resourceGroupName",
///         Status = AzureNative.DevTestLab.EnableStatus.Enabled,
///         TaskType = "LabVmsStartupTask",
///         TimeZoneId = "Hawaiian Standard Time",
///         WeeklyRecurrence = new AzureNative.DevTestLab.Inputs.WeekDetailsArgs
///         {
///             Time = "0700",
///             Weekdays = new[]
///             {
///                 "Monday",
///                 "Tuesday",
///                 "Wednesday",
///                 "Thursday",
///                 "Friday",
///                 "Saturday",
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
/// 		_, err := devtestlab.NewGlobalSchedule(ctx, "globalSchedule", &devtestlab.GlobalScheduleArgs{
/// 			Name:              pulumi.String("labvmautostart"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Status:            pulumi.String(devtestlab.EnableStatusEnabled),
/// 			TaskType:          pulumi.String("LabVmsStartupTask"),
/// 			TimeZoneId:        pulumi.String("Hawaiian Standard Time"),
/// 			WeeklyRecurrence: &devtestlab.WeekDetailsArgs{
/// 				Time: pulumi.String("0700"),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Monday"),
/// 					pulumi.String("Tuesday"),
/// 					pulumi.String("Wednesday"),
/// 					pulumi.String("Thursday"),
/// 					pulumi.String("Friday"),
/// 					pulumi.String("Saturday"),
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
/// import com.pulumi.azurenative.devtestlab.GlobalSchedule;
/// import com.pulumi.azurenative.devtestlab.GlobalScheduleArgs;
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
///         var globalSchedule = new GlobalSchedule("globalSchedule", GlobalScheduleArgs.builder()
///             .name("labvmautostart")
///             .resourceGroupName("resourceGroupName")
///             .status("Enabled")
///             .taskType("LabVmsStartupTask")
///             .timeZoneId("Hawaiian Standard Time")
///             .weeklyRecurrence(WeekDetailsArgs.builder()
///                 .time("0700")
///                 .weekdays(
///                     "Monday",
///                     "Tuesday",
///                     "Wednesday",
///                     "Thursday",
///                     "Friday",
///                     "Saturday")
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
/// const globalSchedule = new azure_native.devtestlab.GlobalSchedule("globalSchedule", {
///     name: "labvmautostart",
///     resourceGroupName: "resourceGroupName",
///     status: azure_native.devtestlab.EnableStatus.Enabled,
///     taskType: "LabVmsStartupTask",
///     timeZoneId: "Hawaiian Standard Time",
///     weeklyRecurrence: {
///         time: "0700",
///         weekdays: [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
///             "Friday",
///             "Saturday",
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
/// global_schedule = azure_native.devtestlab.GlobalSchedule("globalSchedule",
///     name="labvmautostart",
///     resource_group_name="resourceGroupName",
///     status=azure_native.devtestlab.EnableStatus.ENABLED,
///     task_type="LabVmsStartupTask",
///     time_zone_id="Hawaiian Standard Time",
///     weekly_recurrence={
///         "time": "0700",
///         "weekdays": [
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
///             "Friday",
///             "Saturday",
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   globalSchedule:
///     type: azure-native:devtestlab:GlobalSchedule
///     properties:
///       name: labvmautostart
///       resourceGroupName: resourceGroupName
///       status: Enabled
///       taskType: LabVmsStartupTask
///       timeZoneId: Hawaiian Standard Time
///       weeklyRecurrence:
///         time: '0700'
///         weekdays:
///           - Monday
///           - Tuesday
///           - Wednesday
///           - Thursday
///           - Friday
///           - Saturday
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
/// $ pulumi import azure-native:devtestlab:GlobalSchedule LabVmAutoStart /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/schedules/{name}
/// ```
class GlobalSchedule extends pulumi.CustomResource {
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

  /// Creates a new [GlobalSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSchedule]. {@macro pulumi_devtestlab_global_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSchedule(
    String name, {
    GlobalScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:GlobalSchedule',
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
