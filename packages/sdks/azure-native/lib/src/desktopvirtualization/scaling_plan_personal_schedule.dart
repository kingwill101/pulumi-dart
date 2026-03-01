import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_personal_schedule_args.dart';
import 'system_data_response.dart';
import 'time_response.dart';

/// Represents a ScalingPlanPersonalSchedule definition.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2024-11-01-preview.
///
/// Other available API versions: 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScalingPlanPersonalSchedules_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scalingPlanPersonalSchedule = new AzureNative.DesktopVirtualization.ScalingPlanPersonalSchedule("scalingPlanPersonalSchedule", new()
///     {
///         DaysOfWeek = new[]
///         {
///             AzureNative.DesktopVirtualization.DayOfWeek.Monday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Tuesday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Wednesday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Thursday,
///             AzureNative.DesktopVirtualization.DayOfWeek.Friday,
///         },
///         OffPeakActionOnDisconnect = AzureNative.DesktopVirtualization.SessionHandlingOperation.None,
///         OffPeakActionOnLogoff = AzureNative.DesktopVirtualization.SessionHandlingOperation.Deallocate,
///         OffPeakMinutesToWaitOnDisconnect = 10,
///         OffPeakMinutesToWaitOnLogoff = 10,
///         OffPeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 20,
///             Minute = 0,
///         },
///         OffPeakStartVMOnConnect = AzureNative.DesktopVirtualization.SetStartVMOnConnect.Enable,
///         PeakActionOnDisconnect = AzureNative.DesktopVirtualization.SessionHandlingOperation.None,
///         PeakActionOnLogoff = AzureNative.DesktopVirtualization.SessionHandlingOperation.Deallocate,
///         PeakMinutesToWaitOnDisconnect = 10,
///         PeakMinutesToWaitOnLogoff = 10,
///         PeakStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 8,
///             Minute = 0,
///         },
///         PeakStartVMOnConnect = AzureNative.DesktopVirtualization.SetStartVMOnConnect.Enable,
///         RampDownActionOnDisconnect = AzureNative.DesktopVirtualization.SessionHandlingOperation.None,
///         RampDownActionOnLogoff = AzureNative.DesktopVirtualization.SessionHandlingOperation.Deallocate,
///         RampDownMinutesToWaitOnDisconnect = 10,
///         RampDownMinutesToWaitOnLogoff = 10,
///         RampDownStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 18,
///             Minute = 0,
///         },
///         RampDownStartVMOnConnect = AzureNative.DesktopVirtualization.SetStartVMOnConnect.Enable,
///         RampUpActionOnDisconnect = AzureNative.DesktopVirtualization.SessionHandlingOperation.None,
///         RampUpActionOnLogoff = AzureNative.DesktopVirtualization.SessionHandlingOperation.None,
///         RampUpAutoStartHosts = AzureNative.DesktopVirtualization.StartupBehavior.All,
///         RampUpMinutesToWaitOnDisconnect = 10,
///         RampUpMinutesToWaitOnLogoff = 10,
///         RampUpStartTime = new AzureNative.DesktopVirtualization.Inputs.TimeArgs
///         {
///             Hour = 6,
///             Minute = 0,
///         },
///         RampUpStartVMOnConnect = AzureNative.DesktopVirtualization.SetStartVMOnConnect.Enable,
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
/// 		_, err := desktopvirtualization.NewScalingPlanPersonalSchedule(ctx, "scalingPlanPersonalSchedule", &desktopvirtualization.ScalingPlanPersonalScheduleArgs{
/// 			DaysOfWeek: pulumi.StringArray{
/// 				pulumi.String(desktopvirtualization.DayOfWeekMonday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekTuesday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekWednesday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekThursday),
/// 				pulumi.String(desktopvirtualization.DayOfWeekFriday),
/// 			},
/// 			OffPeakActionOnDisconnect:        pulumi.String(desktopvirtualization.SessionHandlingOperationNone),
/// 			OffPeakActionOnLogoff:            pulumi.String(desktopvirtualization.SessionHandlingOperationDeallocate),
/// 			OffPeakMinutesToWaitOnDisconnect: pulumi.Int(10),
/// 			OffPeakMinutesToWaitOnLogoff:     pulumi.Int(10),
/// 			OffPeakStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(20),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			OffPeakStartVMOnConnect:       pulumi.String(desktopvirtualization.SetStartVMOnConnectEnable),
/// 			PeakActionOnDisconnect:        pulumi.String(desktopvirtualization.SessionHandlingOperationNone),
/// 			PeakActionOnLogoff:            pulumi.String(desktopvirtualization.SessionHandlingOperationDeallocate),
/// 			PeakMinutesToWaitOnDisconnect: pulumi.Int(10),
/// 			PeakMinutesToWaitOnLogoff:     pulumi.Int(10),
/// 			PeakStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(8),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			PeakStartVMOnConnect:              pulumi.String(desktopvirtualization.SetStartVMOnConnectEnable),
/// 			RampDownActionOnDisconnect:        pulumi.String(desktopvirtualization.SessionHandlingOperationNone),
/// 			RampDownActionOnLogoff:            pulumi.String(desktopvirtualization.SessionHandlingOperationDeallocate),
/// 			RampDownMinutesToWaitOnDisconnect: pulumi.Int(10),
/// 			RampDownMinutesToWaitOnLogoff:     pulumi.Int(10),
/// 			RampDownStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(18),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			RampDownStartVMOnConnect:        pulumi.String(desktopvirtualization.SetStartVMOnConnectEnable),
/// 			RampUpActionOnDisconnect:        pulumi.String(desktopvirtualization.SessionHandlingOperationNone),
/// 			RampUpActionOnLogoff:            pulumi.String(desktopvirtualization.SessionHandlingOperationNone),
/// 			RampUpAutoStartHosts:            pulumi.String(desktopvirtualization.StartupBehaviorAll),
/// 			RampUpMinutesToWaitOnDisconnect: pulumi.Int(10),
/// 			RampUpMinutesToWaitOnLogoff:     pulumi.Int(10),
/// 			RampUpStartTime: &desktopvirtualization.TimeArgs{
/// 				Hour:   pulumi.Int(6),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			RampUpStartVMOnConnect:  pulumi.String(desktopvirtualization.SetStartVMOnConnectEnable),
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
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlanPersonalSchedule;
/// import com.pulumi.azurenative.desktopvirtualization.ScalingPlanPersonalScheduleArgs;
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
///         var scalingPlanPersonalSchedule = new ScalingPlanPersonalSchedule("scalingPlanPersonalSchedule", ScalingPlanPersonalScheduleArgs.builder()
///             .daysOfWeek(
///                 "Monday",
///                 "Tuesday",
///                 "Wednesday",
///                 "Thursday",
///                 "Friday")
///             .offPeakActionOnDisconnect("None")
///             .offPeakActionOnLogoff("Deallocate")
///             .offPeakMinutesToWaitOnDisconnect(10)
///             .offPeakMinutesToWaitOnLogoff(10)
///             .offPeakStartTime(TimeArgs.builder()
///                 .hour(20)
///                 .minute(0)
///                 .build())
///             .offPeakStartVMOnConnect("Enable")
///             .peakActionOnDisconnect("None")
///             .peakActionOnLogoff("Deallocate")
///             .peakMinutesToWaitOnDisconnect(10)
///             .peakMinutesToWaitOnLogoff(10)
///             .peakStartTime(TimeArgs.builder()
///                 .hour(8)
///                 .minute(0)
///                 .build())
///             .peakStartVMOnConnect("Enable")
///             .rampDownActionOnDisconnect("None")
///             .rampDownActionOnLogoff("Deallocate")
///             .rampDownMinutesToWaitOnDisconnect(10)
///             .rampDownMinutesToWaitOnLogoff(10)
///             .rampDownStartTime(TimeArgs.builder()
///                 .hour(18)
///                 .minute(0)
///                 .build())
///             .rampDownStartVMOnConnect("Enable")
///             .rampUpActionOnDisconnect("None")
///             .rampUpActionOnLogoff("None")
///             .rampUpAutoStartHosts("All")
///             .rampUpMinutesToWaitOnDisconnect(10)
///             .rampUpMinutesToWaitOnLogoff(10)
///             .rampUpStartTime(TimeArgs.builder()
///                 .hour(6)
///                 .minute(0)
///                 .build())
///             .rampUpStartVMOnConnect("Enable")
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
/// const scalingPlanPersonalSchedule = new azure_native.desktopvirtualization.ScalingPlanPersonalSchedule("scalingPlanPersonalSchedule", {
///     daysOfWeek: [
///         azure_native.desktopvirtualization.DayOfWeek.Monday,
///         azure_native.desktopvirtualization.DayOfWeek.Tuesday,
///         azure_native.desktopvirtualization.DayOfWeek.Wednesday,
///         azure_native.desktopvirtualization.DayOfWeek.Thursday,
///         azure_native.desktopvirtualization.DayOfWeek.Friday,
///     ],
///     offPeakActionOnDisconnect: azure_native.desktopvirtualization.SessionHandlingOperation.None,
///     offPeakActionOnLogoff: azure_native.desktopvirtualization.SessionHandlingOperation.Deallocate,
///     offPeakMinutesToWaitOnDisconnect: 10,
///     offPeakMinutesToWaitOnLogoff: 10,
///     offPeakStartTime: {
///         hour: 20,
///         minute: 0,
///     },
///     offPeakStartVMOnConnect: azure_native.desktopvirtualization.SetStartVMOnConnect.Enable,
///     peakActionOnDisconnect: azure_native.desktopvirtualization.SessionHandlingOperation.None,
///     peakActionOnLogoff: azure_native.desktopvirtualization.SessionHandlingOperation.Deallocate,
///     peakMinutesToWaitOnDisconnect: 10,
///     peakMinutesToWaitOnLogoff: 10,
///     peakStartTime: {
///         hour: 8,
///         minute: 0,
///     },
///     peakStartVMOnConnect: azure_native.desktopvirtualization.SetStartVMOnConnect.Enable,
///     rampDownActionOnDisconnect: azure_native.desktopvirtualization.SessionHandlingOperation.None,
///     rampDownActionOnLogoff: azure_native.desktopvirtualization.SessionHandlingOperation.Deallocate,
///     rampDownMinutesToWaitOnDisconnect: 10,
///     rampDownMinutesToWaitOnLogoff: 10,
///     rampDownStartTime: {
///         hour: 18,
///         minute: 0,
///     },
///     rampDownStartVMOnConnect: azure_native.desktopvirtualization.SetStartVMOnConnect.Enable,
///     rampUpActionOnDisconnect: azure_native.desktopvirtualization.SessionHandlingOperation.None,
///     rampUpActionOnLogoff: azure_native.desktopvirtualization.SessionHandlingOperation.None,
///     rampUpAutoStartHosts: azure_native.desktopvirtualization.StartupBehavior.All,
///     rampUpMinutesToWaitOnDisconnect: 10,
///     rampUpMinutesToWaitOnLogoff: 10,
///     rampUpStartTime: {
///         hour: 6,
///         minute: 0,
///     },
///     rampUpStartVMOnConnect: azure_native.desktopvirtualization.SetStartVMOnConnect.Enable,
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
/// scaling_plan_personal_schedule = azure_native.desktopvirtualization.ScalingPlanPersonalSchedule("scalingPlanPersonalSchedule",
///     days_of_week=[
///         azure_native.desktopvirtualization.DayOfWeek.MONDAY,
///         azure_native.desktopvirtualization.DayOfWeek.TUESDAY,
///         azure_native.desktopvirtualization.DayOfWeek.WEDNESDAY,
///         azure_native.desktopvirtualization.DayOfWeek.THURSDAY,
///         azure_native.desktopvirtualization.DayOfWeek.FRIDAY,
///     ],
///     off_peak_action_on_disconnect=azure_native.desktopvirtualization.SessionHandlingOperation.NONE,
///     off_peak_action_on_logoff=azure_native.desktopvirtualization.SessionHandlingOperation.DEALLOCATE,
///     off_peak_minutes_to_wait_on_disconnect=10,
///     off_peak_minutes_to_wait_on_logoff=10,
///     off_peak_start_time={
///         "hour": 20,
///         "minute": 0,
///     },
///     off_peak_start_vm_on_connect=azure_native.desktopvirtualization.SetStartVMOnConnect.ENABLE,
///     peak_action_on_disconnect=azure_native.desktopvirtualization.SessionHandlingOperation.NONE,
///     peak_action_on_logoff=azure_native.desktopvirtualization.SessionHandlingOperation.DEALLOCATE,
///     peak_minutes_to_wait_on_disconnect=10,
///     peak_minutes_to_wait_on_logoff=10,
///     peak_start_time={
///         "hour": 8,
///         "minute": 0,
///     },
///     peak_start_vm_on_connect=azure_native.desktopvirtualization.SetStartVMOnConnect.ENABLE,
///     ramp_down_action_on_disconnect=azure_native.desktopvirtualization.SessionHandlingOperation.NONE,
///     ramp_down_action_on_logoff=azure_native.desktopvirtualization.SessionHandlingOperation.DEALLOCATE,
///     ramp_down_minutes_to_wait_on_disconnect=10,
///     ramp_down_minutes_to_wait_on_logoff=10,
///     ramp_down_start_time={
///         "hour": 18,
///         "minute": 0,
///     },
///     ramp_down_start_vm_on_connect=azure_native.desktopvirtualization.SetStartVMOnConnect.ENABLE,
///     ramp_up_action_on_disconnect=azure_native.desktopvirtualization.SessionHandlingOperation.NONE,
///     ramp_up_action_on_logoff=azure_native.desktopvirtualization.SessionHandlingOperation.NONE,
///     ramp_up_auto_start_hosts=azure_native.desktopvirtualization.StartupBehavior.ALL,
///     ramp_up_minutes_to_wait_on_disconnect=10,
///     ramp_up_minutes_to_wait_on_logoff=10,
///     ramp_up_start_time={
///         "hour": 6,
///         "minute": 0,
///     },
///     ramp_up_start_vm_on_connect=azure_native.desktopvirtualization.SetStartVMOnConnect.ENABLE,
///     resource_group_name="resourceGroup1",
///     scaling_plan_name="scalingPlan1",
///     scaling_plan_schedule_name="scalingPlanScheduleWeekdays1")
///
/// ```
///
/// ```yaml
/// resources:
///   scalingPlanPersonalSchedule:
///     type: azure-native:desktopvirtualization:ScalingPlanPersonalSchedule
///     properties:
///       daysOfWeek:
///         - Monday
///         - Tuesday
///         - Wednesday
///         - Thursday
///         - Friday
///       offPeakActionOnDisconnect: None
///       offPeakActionOnLogoff: Deallocate
///       offPeakMinutesToWaitOnDisconnect: 10
///       offPeakMinutesToWaitOnLogoff: 10
///       offPeakStartTime:
///         hour: 20
///         minute: 0
///       offPeakStartVMOnConnect: Enable
///       peakActionOnDisconnect: None
///       peakActionOnLogoff: Deallocate
///       peakMinutesToWaitOnDisconnect: 10
///       peakMinutesToWaitOnLogoff: 10
///       peakStartTime:
///         hour: 8
///         minute: 0
///       peakStartVMOnConnect: Enable
///       rampDownActionOnDisconnect: None
///       rampDownActionOnLogoff: Deallocate
///       rampDownMinutesToWaitOnDisconnect: 10
///       rampDownMinutesToWaitOnLogoff: 10
///       rampDownStartTime:
///         hour: 18
///         minute: 0
///       rampDownStartVMOnConnect: Enable
///       rampUpActionOnDisconnect: None
///       rampUpActionOnLogoff: None
///       rampUpAutoStartHosts: All
///       rampUpMinutesToWaitOnDisconnect: 10
///       rampUpMinutesToWaitOnLogoff: 10
///       rampUpStartTime:
///         hour: 6
///         minute: 0
///       rampUpStartVMOnConnect: Enable
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
/// $ pulumi import azure-native:desktopvirtualization:ScalingPlanPersonalSchedule scalingPlanScheduleWeekdays1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/scalingPlans/{scalingPlanName}/personalSchedules/{scalingPlanScheduleName}
/// ```
class ScalingPlanPersonalSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Set of days of the week on which this schedule is active.
  late final pulumi.Output<List<String>?> daysOfWeek;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Action to be taken after a user disconnect during the off-peak period.
  late final pulumi.Output<String?> offPeakActionOnDisconnect;
  /// Action to be taken after a logoff during the off-peak period.
  late final pulumi.Output<String?> offPeakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the off-peak period.
  late final pulumi.Output<int?> offPeakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the off-peak period.
  late final pulumi.Output<int?> offPeakMinutesToWaitOnLogoff;
  /// Starting time for off-peak period.
  late final pulumi.Output<TimeResponse?> offPeakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the off-peak phase.
  late final pulumi.Output<String?> offPeakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the peak period.
  late final pulumi.Output<String?> peakActionOnDisconnect;
  /// Action to be taken after a logoff during the peak period.
  late final pulumi.Output<String?> peakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the peak period.
  late final pulumi.Output<int?> peakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the peak period.
  late final pulumi.Output<int?> peakMinutesToWaitOnLogoff;
  /// Starting time for peak period.
  late final pulumi.Output<TimeResponse?> peakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the peak phase.
  late final pulumi.Output<String?> peakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp down period.
  late final pulumi.Output<String?> rampDownActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp down period.
  late final pulumi.Output<String?> rampDownActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp down period.
  late final pulumi.Output<int?> rampDownMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp down period.
  late final pulumi.Output<int?> rampDownMinutesToWaitOnLogoff;
  /// Starting time for ramp down period.
  late final pulumi.Output<TimeResponse?> rampDownStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp down phase.
  late final pulumi.Output<String?> rampDownStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp up period.
  late final pulumi.Output<String?> rampUpActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp up period.
  late final pulumi.Output<String?> rampUpActionOnLogoff;
  /// The desired startup behavior during the ramp up period for personal vms in the hostpool.
  late final pulumi.Output<String?> rampUpAutoStartHosts;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp up period.
  late final pulumi.Output<int?> rampUpMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp up period.
  late final pulumi.Output<int?> rampUpMinutesToWaitOnLogoff;
  /// Starting time for ramp up period.
  late final pulumi.Output<TimeResponse?> rampUpStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
  late final pulumi.Output<String?> rampUpStartVMOnConnect;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ScalingPlanPersonalSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlanPersonalSchedule]. {@macro pulumi_desktopvirtualization_scaling_plan_personal_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlanPersonalSchedule(
    String name, {
    ScalingPlanPersonalScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:ScalingPlanPersonalSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.daysOfWeek = registerOutput<List<String>?>('daysOfWeek');
    this.name = registerOutput<String>('name');
    this.offPeakActionOnDisconnect = registerOutput<String?>('offPeakActionOnDisconnect');
    this.offPeakActionOnLogoff = registerOutput<String?>('offPeakActionOnLogoff');
    this.offPeakMinutesToWaitOnDisconnect = registerOutput<int?>('offPeakMinutesToWaitOnDisconnect');
    this.offPeakMinutesToWaitOnLogoff = registerOutput<int?>('offPeakMinutesToWaitOnLogoff');
    this.offPeakStartTime = registerOutput<TimeResponse?>('offPeakStartTime');
    this.offPeakStartVMOnConnect = registerOutput<String?>('offPeakStartVMOnConnect');
    this.peakActionOnDisconnect = registerOutput<String?>('peakActionOnDisconnect');
    this.peakActionOnLogoff = registerOutput<String?>('peakActionOnLogoff');
    this.peakMinutesToWaitOnDisconnect = registerOutput<int?>('peakMinutesToWaitOnDisconnect');
    this.peakMinutesToWaitOnLogoff = registerOutput<int?>('peakMinutesToWaitOnLogoff');
    this.peakStartTime = registerOutput<TimeResponse?>('peakStartTime');
    this.peakStartVMOnConnect = registerOutput<String?>('peakStartVMOnConnect');
    this.rampDownActionOnDisconnect = registerOutput<String?>('rampDownActionOnDisconnect');
    this.rampDownActionOnLogoff = registerOutput<String?>('rampDownActionOnLogoff');
    this.rampDownMinutesToWaitOnDisconnect = registerOutput<int?>('rampDownMinutesToWaitOnDisconnect');
    this.rampDownMinutesToWaitOnLogoff = registerOutput<int?>('rampDownMinutesToWaitOnLogoff');
    this.rampDownStartTime = registerOutput<TimeResponse?>('rampDownStartTime');
    this.rampDownStartVMOnConnect = registerOutput<String?>('rampDownStartVMOnConnect');
    this.rampUpActionOnDisconnect = registerOutput<String?>('rampUpActionOnDisconnect');
    this.rampUpActionOnLogoff = registerOutput<String?>('rampUpActionOnLogoff');
    this.rampUpAutoStartHosts = registerOutput<String?>('rampUpAutoStartHosts');
    this.rampUpMinutesToWaitOnDisconnect = registerOutput<int?>('rampUpMinutesToWaitOnDisconnect');
    this.rampUpMinutesToWaitOnLogoff = registerOutput<int?>('rampUpMinutesToWaitOnLogoff');
    this.rampUpStartTime = registerOutput<TimeResponse?>('rampUpStartTime');
    this.rampUpStartVMOnConnect = registerOutput<String?>('rampUpStartVMOnConnect');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
