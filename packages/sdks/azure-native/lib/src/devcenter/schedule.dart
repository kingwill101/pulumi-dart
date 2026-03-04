import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'system_data_response.dart';

/// Represents a Schedule to execute a task.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Schedules_CreateDailyShutdownPoolSchedule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedule = new AzureNative.DevCenter.Schedule("schedule", new()
///     {
///         Frequency = AzureNative.DevCenter.ScheduledFrequency.Daily,
///         PoolName = "DevPool",
///         ProjectName = "DevProject",
///         ResourceGroupName = "rg1",
///         ScheduleName = "autoShutdown",
///         State = AzureNative.DevCenter.ScheduleEnableStatus.Enabled,
///         Time = "17:30",
///         TimeZone = "America/Los_Angeles",
///         Type = AzureNative.DevCenter.ScheduledType.StopDevBox,
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewSchedule(ctx, "schedule", &devcenter.ScheduleArgs{
/// 			Frequency:         pulumi.String(devcenter.ScheduledFrequencyDaily),
/// 			PoolName:          pulumi.String("DevPool"),
/// 			ProjectName:       pulumi.String("DevProject"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ScheduleName:      pulumi.String("autoShutdown"),
/// 			State:             pulumi.String(devcenter.ScheduleEnableStatusEnabled),
/// 			Time:              pulumi.String("17:30"),
/// 			TimeZone:          pulumi.String("America/Los_Angeles"),
/// 			Type:              pulumi.String(devcenter.ScheduledTypeStopDevBox),
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
/// import com.pulumi.azurenative.devcenter.Schedule;
/// import com.pulumi.azurenative.devcenter.ScheduleArgs;
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
///             .frequency("Daily")
///             .poolName("DevPool")
///             .projectName("DevProject")
///             .resourceGroupName("rg1")
///             .scheduleName("autoShutdown")
///             .state("Enabled")
///             .time("17:30")
///             .timeZone("America/Los_Angeles")
///             .type("StopDevBox")
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
/// const schedule = new azure_native.devcenter.Schedule("schedule", {
///     frequency: azure_native.devcenter.ScheduledFrequency.Daily,
///     poolName: "DevPool",
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
///     scheduleName: "autoShutdown",
///     state: azure_native.devcenter.ScheduleEnableStatus.Enabled,
///     time: "17:30",
///     timeZone: "America/Los_Angeles",
///     type: azure_native.devcenter.ScheduledType.StopDevBox,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schedule = azure_native.devcenter.Schedule("schedule",
///     frequency=azure_native.devcenter.ScheduledFrequency.DAILY,
///     pool_name="DevPool",
///     project_name="DevProject",
///     resource_group_name="rg1",
///     schedule_name="autoShutdown",
///     state=azure_native.devcenter.ScheduleEnableStatus.ENABLED,
///     time="17:30",
///     time_zone="America/Los_Angeles",
///     type=azure_native.devcenter.ScheduledType.STOP_DEV_BOX)
///
/// ```
///
/// ```yaml
/// resources:
///   schedule:
///     type: azure-native:devcenter:Schedule
///     properties:
///       frequency: Daily
///       poolName: DevPool
///       projectName: DevProject
///       resourceGroupName: rg1
///       scheduleName: autoShutdown
///       state: Enabled
///       time: 17:30
///       timeZone: America/Los_Angeles
///       type: StopDevBox
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
/// $ pulumi import azure-native:devcenter:Schedule autoShutdown /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}/pools/{poolName}/schedules/{scheduleName}
/// ```
class Schedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The frequency of this scheduled task.
  late final pulumi.Output<String> frequency;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Indicates whether or not this scheduled task is enabled.
  late final pulumi.Output<String?> state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The target time to trigger the action. The format is HH:MM.
  late final pulumi.Output<String> time;

  /// The IANA timezone id at which the schedule should execute.
  late final pulumi.Output<String> timeZone;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_devcenter_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:Schedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    frequency = registerOutput<String>('frequency');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    time = registerOutput<String>('time');
    timeZone = registerOutput<String>('timeZone');
    type = registerOutput<String>('type');
  }
}
