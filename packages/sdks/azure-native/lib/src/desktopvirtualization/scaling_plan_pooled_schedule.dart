import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_pooled_schedule_args.dart';
import 'system_data_response.dart';
import 'time_response.dart';

/// Represents a ScalingPlanPooledSchedule definition.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScalingPlanPooledSchedules_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scalingPlanPooledSchedule = new AzureNative.DesktopVirtualization.ScalingPlanPooledSchedule("scalingPlanPooledSchedule", new()
///     {
///         DaysOfWeek = new[]
///         {
///             AzureNative.DesktopVirtualization.DayOfWeek.Monday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Tuesday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Wednesday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Thursday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Friday,
///         },
///         OffPeakLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         OffPeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 20,
///             Minute = 0,
///         },
///         PeakLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.BreadthFirst,
///         PeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 8,
///             Minute = 0,
///         },
///         RampDownCapacityThresholdPct = 50,
///         RampDownForceLogoffUsers = true,
///         RampDownLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         RampDownMinimumHostsPct = 20,
///         RampDownNotificationMessage = "message",
///         RampDownStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 18,
///             Minute = 0,
///         },
///         RampDownWaitTimeMinutes = 30,
///         RampUpCapacityThresholdPct = 80,
///         RampUpLoadBalancingAlgorithm = AzureNative.DesktopVirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///         RampUpMinimumHostsPct = 20,
///         RampUpStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 6,
///             Minute = 0,
///         },
///         ResourceGroupName = "resourceGroup1",
///         ScalingPlanName = "scalingPlan1",
///         ScalingPlanScheduleName = "scalingPlanScheduleWeekdays1",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewScalingPlanPooledSchedule(ctx, "scalingPlanPooledSchedule", &desktopvirtualization.ScalingPlanPooledScheduleArgs{
/// 			DaysOfWeek: pulumi.StringArray{
/// 				pulumi.String(desktopvirtualization.DayOfWeekMonday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekTuesday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekWednesday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekThursday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekFriday),
/// 			},
/// 			OffPeakLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 			OffPeakStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(20),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			PeakLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmBreadthFirst),
/// 			PeakStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(8),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			RampDownCapacityThresholdPct:   pulumi.Int(50),
/// 			RampDownForceLogoffUsers:       pulumi.Bool(true),
/// 			RampDownLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 			RampDownMinimumHostsPct:        pulumi.Int(20),
/// 			RampDownNotificationMessage:    pulumi.String("message"),
/// 			RampDownStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(18),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			RampDownWaitTimeMinutes:      pulumi.Int(30),
/// 			RampUpCapacityThresholdPct:   pulumi.Int(80),
/// 			RampUpLoadBalancingAlgorithm: pulumi.String(desktopvirtualization.SessionHostLoadBalancingAlgorithmDepthFirst),
/// 			RampUpMinimumHostsPct:        pulumi.Int(20),
/// 			RampUpStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(6),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			ResourceGroupName:       pulumi.String("resourceGroup1"),
/// 			ScalingPlanName:         pulumi.String("scalingPlan1"),
/// 			ScalingPlanScheduleName: pulumi.String("scalingPlanScheduleWeekdays1"),
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
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlanPooledSchedule;
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlanPooledScheduleArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.TimeArgs;
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
///         var scalingPlanPooledSchedule = new ScalingPlanPooledSchedule("scalingPlanPooledSchedule", ScalingPlanPooledScheduleArgs.builder()
///             .daysOfWeek(
///                 "Monday",
///                 "Tuesday",
///                 "Wednesday",
///                 "Thursday",
///                 "Friday")
///             .offPeakLoadBalancingAlgorithm("DepthFirst")
///             .offPeakStartTime(TimeArgs.builder()
///                 .hour(20)
///                 .minute(0)
///                 .build())
///             .peakLoadBalancingAlgorithm("BreadthFirst")
///             .peakStartTime(TimeArgs.builder()
///                 .hour(8)
///                 .minute(0)
///                 .build())
///             .rampDownCapacityThresholdPct(50)
///             .rampDownForceLogoffUsers(true)
///             .rampDownLoadBalancingAlgorithm("DepthFirst")
///             .rampDownMinimumHostsPct(20)
///             .rampDownNotificationMessage("message")
///             .rampDownStartTime(TimeArgs.builder()
///                 .hour(18)
///                 .minute(0)
///                 .build())
///             .rampDownWaitTimeMinutes(30)
///             .rampUpCapacityThresholdPct(80)
///             .rampUpLoadBalancingAlgorithm("DepthFirst")
///             .rampUpMinimumHostsPct(20)
///             .rampUpStartTime(TimeArgs.builder()
///                 .hour(6)
///                 .minute(0)
///                 .build())
///             .resourceGroupName("resourceGroup1")
///             .scalingPlanName("scalingPlan1")
///             .scalingPlanScheduleName("scalingPlanScheduleWeekdays1")
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
/// const scalingPlanPooledSchedule = new azure_native.desktopvirtualization.ScalingPlanPooledSchedule("scalingPlanPooledSchedule", {
///     daysOfWeek: [
///         azure_native.desktopvirtualization.DayOfWeek.Monday,
///         azure_native.desktopvirtualization.DayOfWeek.Tuesday,
///         azure_native.desktopvirtualization.DayOfWeek.Wednesday,
///         azure_native.desktopvirtualization.DayOfWeek.Thursday,
///         azure_native.desktopvirtualization.DayOfWeek.Friday,
///     ],
///     offPeakLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///     offPeakStartTime: {
///         hour: 20,
///         minute: 0,
///     },
///     peakLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.BreadthFirst,
///     peakStartTime: {
///         hour: 8,
///         minute: 0,
///     },
///     rampDownCapacityThresholdPct: 50,
///     rampDownForceLogoffUsers: true,
///     rampDownLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///     rampDownMinimumHostsPct: 20,
///     rampDownNotificationMessage: "message",
///     rampDownStartTime: {
///         hour: 18,
///         minute: 0,
///     },
///     rampDownWaitTimeMinutes: 30,
///     rampUpCapacityThresholdPct: 80,
///     rampUpLoadBalancingAlgorithm: azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DepthFirst,
///     rampUpMinimumHostsPct: 20,
///     rampUpStartTime: {
///         hour: 6,
///         minute: 0,
///     },
///     resourceGroupName: "resourceGroup1",
///     scalingPlanName: "scalingPlan1",
///     scalingPlanScheduleName: "scalingPlanScheduleWeekdays1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scaling_plan_pooled_schedule = azure_native.desktopvirtualization.ScalingPlanPooledSchedule("scalingPlanPooledSchedule",
///     days_of_week=[
///         azure_native.desktopvirtualization.DayOfWeek.MONDAY,
///         azure_native.desktopvirtualization.DayOfWeek.TUESDAY,
///         azure_native.desktopvirtualization.DayOfWeek.WEDNESDAY,
///         azure_native.desktopvirtualization.DayOfWeek.THURSDAY,
///         azure_native.desktopvirtualization.DayOfWeek.FRIDAY,
///     ],
///     off_peak_load_balancing_algorithm=azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///     off_peak_start_time={
///         "hour": 20,
///         "minute": 0,
///     },
///     peak_load_balancing_algorithm=azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.BREADTH_FIRST,
///     peak_start_time={
///         "hour": 8,
///         "minute": 0,
///     },
///     ramp_down_capacity_threshold_pct=50,
///     ramp_down_force_logoff_users=True,
///     ramp_down_load_balancing_algorithm=azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///     ramp_down_minimum_hosts_pct=20,
///     ramp_down_notification_message="message",
///     ramp_down_start_time={
///         "hour": 18,
///         "minute": 0,
///     },
///     ramp_down_wait_time_minutes=30,
///     ramp_up_capacity_threshold_pct=80,
///     ramp_up_load_balancing_algorithm=azure_native.desktopvirtualization.SessionHostLoadBalancingAlgorithm.DEPTH_FIRST,
///     ramp_up_minimum_hosts_pct=20,
///     ramp_up_start_time={
///         "hour": 6,
///         "minute": 0,
///     },
///     resource_group_name="resourceGroup1",
///     scaling_plan_name="scalingPlan1",
///     scaling_plan_schedule_name="scalingPlanScheduleWeekdays1")
///
/// ```
///
/// ```yaml
/// resources:
///   scalingPlanPooledSchedule:
///     type: azure-native:desktopvirtualization:ScalingPlanPooledSchedule
///     properties:
///       daysOfWeek:
///         - Monday
///         - Tuesday
///         - Wednesday
///         - Thursday
///         - Friday
///       offPeakLoadBalancingAlgorithm: DepthFirst
///       offPeakStartTime:
///         hour: 20
///         minute: 0
///       peakLoadBalancingAlgorithm: BreadthFirst
///       peakStartTime:
///         hour: 8
///         minute: 0
///       rampDownCapacityThresholdPct: 50
///       rampDownForceLogoffUsers: true
///       rampDownLoadBalancingAlgorithm: DepthFirst
///       rampDownMinimumHostsPct: 20
///       rampDownNotificationMessage: message
///       rampDownStartTime:
///         hour: 18
///         minute: 0
///       rampDownWaitTimeMinutes: 30
///       rampUpCapacityThresholdPct: 80
///       rampUpLoadBalancingAlgorithm: DepthFirst
///       rampUpMinimumHostsPct: 20
///       rampUpStartTime:
///         hour: 6
///         minute: 0
///       resourceGroupName: resourceGroup1
///       scalingPlanName: scalingPlan1
///       scalingPlanScheduleName: scalingPlanScheduleWeekdays1
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
/// $ pulumi import azure-native:desktopvirtualization:ScalingPlanPooledSchedule scalingPlanScheduleWeekdays1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/scalingPlans/{scalingPlanName}/pooledSchedules/{scalingPlanScheduleName}
/// ```
class ScalingPlanPooledSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Set of days of the week on which this schedule is active.
  late final pulumi.Output<List<String>?> daysOfWeek;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Load balancing algorithm for off-peak period.
  late final pulumi.Output<String?> offPeakLoadBalancingAlgorithm;
  /// Starting time for off-peak period.
  late final pulumi.Output<TimeResponse?> offPeakStartTime;
  /// Load balancing algorithm for peak period.
  late final pulumi.Output<String?> peakLoadBalancingAlgorithm;
  /// Starting time for peak period.
  late final pulumi.Output<TimeResponse?> peakStartTime;
  /// Capacity threshold for ramp down period.
  late final pulumi.Output<int?> rampDownCapacityThresholdPct;
  /// Should users be logged off forcefully from hosts.
  late final pulumi.Output<bool?> rampDownForceLogoffUsers;
  /// Load balancing algorithm for ramp down period.
  late final pulumi.Output<String?> rampDownLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp down period.
  late final pulumi.Output<int?> rampDownMinimumHostsPct;
  /// Notification message for users during ramp down period.
  late final pulumi.Output<String?> rampDownNotificationMessage;
  /// Starting time for ramp down period.
  late final pulumi.Output<TimeResponse?> rampDownStartTime;
  /// Specifies when to stop hosts during ramp down period.
  late final pulumi.Output<String?> rampDownStopHostsWhen;
  /// Number of minutes to wait to stop hosts during ramp down period.
  late final pulumi.Output<int?> rampDownWaitTimeMinutes;
  /// Capacity threshold for ramp up period.
  late final pulumi.Output<int?> rampUpCapacityThresholdPct;
  /// Load balancing algorithm for ramp up period.
  late final pulumi.Output<String?> rampUpLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp up period.
  late final pulumi.Output<int?> rampUpMinimumHostsPct;
  /// Starting time for ramp up period.
  late final pulumi.Output<TimeResponse?> rampUpStartTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScalingPlanPooledSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlanPooledSchedule]. {@macro pulumi_desktopvirtualization_scaling_plan_pooled_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlanPooledSchedule(
    String name, {
    ScalingPlanPooledScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:ScalingPlanPooledSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    daysOfWeek = registerOutput<List<String>?>('daysOfWeek');
    this.name = registerOutput<String>('name');
    offPeakLoadBalancingAlgorithm = registerOutput<String?>('offPeakLoadBalancingAlgorithm');
    offPeakStartTime = registerOutput<TimeResponse?>('offPeakStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    peakLoadBalancingAlgorithm = registerOutput<String?>('peakLoadBalancingAlgorithm');
    peakStartTime = registerOutput<TimeResponse?>('peakStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rampDownCapacityThresholdPct = registerOutput<int?>('rampDownCapacityThresholdPct');
    rampDownForceLogoffUsers = registerOutput<bool?>('rampDownForceLogoffUsers');
    rampDownLoadBalancingAlgorithm = registerOutput<String?>('rampDownLoadBalancingAlgorithm');
    rampDownMinimumHostsPct = registerOutput<int?>('rampDownMinimumHostsPct');
    rampDownNotificationMessage = registerOutput<String?>('rampDownNotificationMessage');
    rampDownStartTime = registerOutput<TimeResponse?>('rampDownStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rampDownStopHostsWhen = registerOutput<String?>('rampDownStopHostsWhen');
    rampDownWaitTimeMinutes = registerOutput<int?>('rampDownWaitTimeMinutes');
    rampUpCapacityThresholdPct = registerOutput<int?>('rampUpCapacityThresholdPct');
    rampUpLoadBalancingAlgorithm = registerOutput<String?>('rampUpLoadBalancingAlgorithm');
    rampUpMinimumHostsPct = registerOutput<int?>('rampUpMinimumHostsPct');
    rampUpStartTime = registerOutput<TimeResponse?>('rampUpStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
