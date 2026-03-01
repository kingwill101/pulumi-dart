import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_configuration_args.dart';
import 'maintenance_window_response.dart';
import 'system_data_response.dart';
import 'time_in_week_response.dart';
import 'time_span_response.dart';

/// Planned maintenance configuration, used to configure when updates can be deployed to a Managed Cluster. See [planned maintenance](https://docs.microsoft.com/azure/aks/planned-maintenance) for more information about planned maintenance.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Maintenance Configuration with Maintenance Window
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maintenanceConfiguration = new AzureNative.ContainerService.MaintenanceConfiguration("maintenanceConfiguration", new()
///     {
///         ConfigName = "aksManagedAutoUpgradeSchedule",
///         MaintenanceWindow = new AzureNative.ContainerService.Inputs.MaintenanceWindowArgs
///         {
///             DurationHours = 10,
///             NotAllowedDates = new[]
///             {
///                 new AzureNative.ContainerService.Inputs.DateSpanArgs
///                 {
///                     End = "2023-02-25",
///                     Start = "2023-02-18",
///                 },
///                 new AzureNative.ContainerService.Inputs.DateSpanArgs
///                 {
///                     End = "2024-01-05",
///                     Start = "2023-12-23",
///                 },
///             },
///             Schedule = new AzureNative.ContainerService.Inputs.ScheduleArgs
///             {
///                 RelativeMonthly = new AzureNative.ContainerService.Inputs.RelativeMonthlyScheduleArgs
///                 {
///                     DayOfWeek = AzureNative.ContainerService.WeekDay.Monday,
///                     IntervalMonths = 3,
///                     WeekIndex = AzureNative.ContainerService.Type.First,
///                 },
///             },
///             StartDate = "2023-01-01",
///             StartTime = "08:30",
///             UtcOffset = "+05:30",
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewMaintenanceConfiguration(ctx, "maintenanceConfiguration", &containerservice.MaintenanceConfigurationArgs{
/// 			ConfigName: pulumi.String("aksManagedAutoUpgradeSchedule"),
/// 			MaintenanceWindow: &containerservice.MaintenanceWindowArgs{
/// 				DurationHours: pulumi.Int(10),
/// 				NotAllowedDates: containerservice.DateSpanArray{
/// 					&containerservice.DateSpanArgs{
/// 						End:   pulumi.String("2023-02-25"),
/// 						Start: pulumi.String("2023-02-18"),
/// 					},
/// 					&containerservice.DateSpanArgs{
/// 						End:   pulumi.String("2024-01-05"),
/// 						Start: pulumi.String("2023-12-23"),
/// 					},
/// 				},
/// 				Schedule: &containerservice.ScheduleArgs{
/// 					RelativeMonthly: &containerservice.RelativeMonthlyScheduleArgs{
/// 						DayOfWeek:      pulumi.String(containerservice.WeekDayMonday),
/// 						IntervalMonths: pulumi.Int(3),
/// 						WeekIndex:      pulumi.String(containerservice.TypeFirst),
/// 					},
/// 				},
/// 				StartDate: pulumi.String("2023-01-01"),
/// 				StartTime: pulumi.String("08:30"),
/// 				UtcOffset: pulumi.String("+05:30"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
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
/// import com.pulumi.azurenative.containerservice.MaintenanceConfiguration;
/// import com.pulumi.azurenative.containerservice.MaintenanceConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.MaintenanceWindowArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ScheduleArgs;
/// import com.pulumi.azurenative.containerservice.inputs.RelativeMonthlyScheduleArgs;
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
///         var maintenanceConfiguration = new MaintenanceConfiguration("maintenanceConfiguration", MaintenanceConfigurationArgs.builder()
///             .configName("aksManagedAutoUpgradeSchedule")
///             .maintenanceWindow(MaintenanceWindowArgs.builder()
///                 .durationHours(10)
///                 .notAllowedDates(
///                     DateSpanArgs.builder()
///                         .end("2023-02-25")
///                         .start("2023-02-18")
///                         .build(),
///                     DateSpanArgs.builder()
///                         .end("2024-01-05")
///                         .start("2023-12-23")
///                         .build())
///                 .schedule(ScheduleArgs.builder()
///                     .relativeMonthly(RelativeMonthlyScheduleArgs.builder()
///                         .dayOfWeek("Monday")
///                         .intervalMonths(3)
///                         .weekIndex("First")
///                         .build())
///                     .build())
///                 .startDate("2023-01-01")
///                 .startTime("08:30")
///                 .utcOffset("+05:30")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const maintenanceConfiguration = new azure_native.containerservice.MaintenanceConfiguration("maintenanceConfiguration", {
///     configName: "aksManagedAutoUpgradeSchedule",
///     maintenanceWindow: {
///         durationHours: 10,
///         notAllowedDates: [
///             {
///                 end: "2023-02-25",
///                 start: "2023-02-18",
///             },
///             {
///                 end: "2024-01-05",
///                 start: "2023-12-23",
///             },
///         ],
///         schedule: {
///             relativeMonthly: {
///                 dayOfWeek: azure_native.containerservice.WeekDay.Monday,
///                 intervalMonths: 3,
///                 weekIndex: azure_native.containerservice.Type.First,
///             },
///         },
///         startDate: "2023-01-01",
///         startTime: "08:30",
///         utcOffset: "+05:30",
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// maintenance_configuration = azure_native.containerservice.MaintenanceConfiguration("maintenanceConfiguration",
///     config_name="aksManagedAutoUpgradeSchedule",
///     maintenance_window={
///         "duration_hours": 10,
///         "not_allowed_dates": [
///             {
///                 "end": "2023-02-25",
///                 "start": "2023-02-18",
///             },
///             {
///                 "end": "2024-01-05",
///                 "start": "2023-12-23",
///             },
///         ],
///         "schedule": {
///             "relative_monthly": {
///                 "day_of_week": azure_native.containerservice.WeekDay.MONDAY,
///                 "interval_months": 3,
///                 "week_index": azure_native.containerservice.Type.FIRST,
///             },
///         },
///         "start_date": "2023-01-01",
///         "start_time": "08:30",
///         "utc_offset": "+05:30",
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   maintenanceConfiguration:
///     type: azure-native:containerservice:MaintenanceConfiguration
///     properties:
///       configName: aksManagedAutoUpgradeSchedule
///       maintenanceWindow:
///         durationHours: 10
///         notAllowedDates:
///           - end: 2023-02-25
///             start: 2023-02-18
///           - end: 2024-01-05
///             start: 2023-12-23
///         schedule:
///           relativeMonthly:
///             dayOfWeek: Monday
///             intervalMonths: 3
///             weekIndex: First
///         startDate: 2023-01-01
///         startTime: 08:30
///         utcOffset: +05:30
///       resourceGroupName: rg1
///       resourceName: clustername1
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
/// $ pulumi import azure-native:containerservice:MaintenanceConfiguration aksManagedAutoUpgradeSchedule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/maintenanceConfigurations/{configName}
/// ```
class MaintenanceConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Maintenance window for the maintenance configuration.
  late final pulumi.Output<MaintenanceWindowResponse?> maintenanceWindow;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String> name;
  /// Time slots on which upgrade is not allowed.
  late final pulumi.Output<List<TimeSpanResponse>?> notAllowedTime;
  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  late final pulumi.Output<List<TimeInWeekResponse>?> timeInWeek;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [MaintenanceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaintenanceConfiguration]. {@macro pulumi_containerservice_maintenance_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaintenanceConfiguration(
    String name, {
    MaintenanceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:MaintenanceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.maintenanceWindow = registerOutput<MaintenanceWindowResponse?>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.notAllowedTime = registerOutput<List<TimeSpanResponse>?>('notAllowedTime');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.timeInWeek = registerOutput<List<TimeInWeekResponse>?>('timeInWeek');
    this.type = registerOutput<String>('type');
  }
}
