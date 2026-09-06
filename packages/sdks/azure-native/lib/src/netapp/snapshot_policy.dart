import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_schedule_response.dart';
import 'hourly_schedule_response.dart';
import 'monthly_schedule_response.dart';
import 'snapshot_policy_args.dart';
import 'system_data_response.dart';
import 'weekly_schedule_response.dart';

/// Snapshot policy information
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview, 2025-12-01, 2025-12-15-preview, 2026-01-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-04-01, 2026-04-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SnapshotPolicies_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshotPolicy = new AzureNative.NetApp.SnapshotPolicy("snapshotPolicy", new()
///     {
///         AccountName = "account1",
///         DailySchedule = new AzureNative.NetApp.Inputs.DailyScheduleArgs
///         {
///             Hour = 14,
///             Minute = 30,
///             SnapshotsToKeep = 4,
///         },
///         Enabled = true,
///         HourlySchedule = new AzureNative.NetApp.Inputs.HourlyScheduleArgs
///         {
///             Minute = 50,
///             SnapshotsToKeep = 2,
///         },
///         Location = "eastus",
///         MonthlySchedule = new AzureNative.NetApp.Inputs.MonthlyScheduleArgs
///         {
///             DaysOfMonth = "10,11,12",
///             Hour = 14,
///             Minute = 15,
///             SnapshotsToKeep = 5,
///         },
///         ResourceGroupName = "myRG",
///         SnapshotPolicyName = "snapshotPolicyName",
///         WeeklySchedule = new AzureNative.NetApp.Inputs.WeeklyScheduleArgs
///         {
///             Day = "Wednesday",
///             Hour = 14,
///             Minute = 45,
///             SnapshotsToKeep = 3,
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewSnapshotPolicy(ctx, "snapshotPolicy", &netapp.SnapshotPolicyArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			DailySchedule: &netapp.DailyScheduleArgs{
/// 				Hour:            pulumi.Int(14),
/// 				Minute:          pulumi.Int(30),
/// 				SnapshotsToKeep: pulumi.Int(4),
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 			HourlySchedule: &netapp.HourlyScheduleArgs{
/// 				Minute:          pulumi.Int(50),
/// 				SnapshotsToKeep: pulumi.Int(2),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			MonthlySchedule: &netapp.MonthlyScheduleArgs{
/// 				DaysOfMonth:     pulumi.String("10,11,12"),
/// 				Hour:            pulumi.Int(14),
/// 				Minute:          pulumi.Int(15),
/// 				SnapshotsToKeep: pulumi.Int(5),
/// 			},
/// 			ResourceGroupName:  pulumi.String("myRG"),
/// 			SnapshotPolicyName: pulumi.String("snapshotPolicyName"),
/// 			WeeklySchedule: &netapp.WeeklyScheduleArgs{
/// 				Day:             pulumi.String("Wednesday"),
/// 				Hour:            pulumi.Int(14),
/// 				Minute:          pulumi.Int(45),
/// 				SnapshotsToKeep: pulumi.Int(3),
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
/// resource "azure-native_netapp_snapshotpolicy" "snapshotPolicy" {
///   account_name = "account1"
///   daily_schedule = {
///     hour              = 14
///     minute            = 30
///     snapshots_to_keep = 4
///   }
///   enabled = true
///   hourly_schedule = {
///     minute            = 50
///     snapshots_to_keep = 2
///   }
///   location = "eastus"
///   monthly_schedule = {
///     days_of_month     = "10,11,12"
///     hour              = 14
///     minute            = 15
///     snapshots_to_keep = 5
///   }
///   resource_group_name  = "myRG"
///   snapshot_policy_name = "snapshotPolicyName"
///   weekly_schedule = {
///     day               = "Wednesday"
///     hour              = 14
///     minute            = 45
///     snapshots_to_keep = 3
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
/// import com.pulumi.azurenative.netapp.SnapshotPolicy;
/// import com.pulumi.azurenative.netapp.SnapshotPolicyArgs;
/// import com.pulumi.azurenative.netapp.inputs.DailyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.HourlyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.MonthlyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.WeeklyScheduleArgs;
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
///         var snapshotPolicy = new SnapshotPolicy("snapshotPolicy", SnapshotPolicyArgs.builder()
///             .accountName("account1")
///             .dailySchedule(DailyScheduleArgs.builder()
///                 .hour(14)
///                 .minute(30)
///                 .snapshotsToKeep(4)
///                 .build())
///             .enabled(true)
///             .hourlySchedule(HourlyScheduleArgs.builder()
///                 .minute(50)
///                 .snapshotsToKeep(2)
///                 .build())
///             .location("eastus")
///             .monthlySchedule(MonthlyScheduleArgs.builder()
///                 .daysOfMonth("10,11,12")
///                 .hour(14)
///                 .minute(15)
///                 .snapshotsToKeep(5)
///                 .build())
///             .resourceGroupName("myRG")
///             .snapshotPolicyName("snapshotPolicyName")
///             .weeklySchedule(WeeklyScheduleArgs.builder()
///                 .day("Wednesday")
///                 .hour(14)
///                 .minute(45)
///                 .snapshotsToKeep(3)
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
/// const snapshotPolicy = new azure_native.netapp.SnapshotPolicy("snapshotPolicy", {
///     accountName: "account1",
///     dailySchedule: {
///         hour: 14,
///         minute: 30,
///         snapshotsToKeep: 4,
///     },
///     enabled: true,
///     hourlySchedule: {
///         minute: 50,
///         snapshotsToKeep: 2,
///     },
///     location: "eastus",
///     monthlySchedule: {
///         daysOfMonth: "10,11,12",
///         hour: 14,
///         minute: 15,
///         snapshotsToKeep: 5,
///     },
///     resourceGroupName: "myRG",
///     snapshotPolicyName: "snapshotPolicyName",
///     weeklySchedule: {
///         day: "Wednesday",
///         hour: 14,
///         minute: 45,
///         snapshotsToKeep: 3,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot_policy = azure_native.netapp.SnapshotPolicy("snapshotPolicy",
///     account_name="account1",
///     daily_schedule={
///         "hour": 14,
///         "minute": 30,
///         "snapshots_to_keep": 4,
///     },
///     enabled=True,
///     hourly_schedule={
///         "minute": 50,
///         "snapshots_to_keep": 2,
///     },
///     location="eastus",
///     monthly_schedule={
///         "days_of_month": "10,11,12",
///         "hour": 14,
///         "minute": 15,
///         "snapshots_to_keep": 5,
///     },
///     resource_group_name="myRG",
///     snapshot_policy_name="snapshotPolicyName",
///     weekly_schedule={
///         "day": "Wednesday",
///         "hour": 14,
///         "minute": 45,
///         "snapshots_to_keep": 3,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   snapshotPolicy:
///     type: azure-native:netapp:SnapshotPolicy
///     properties:
///       accountName: account1
///       dailySchedule:
///         hour: 14
///         minute: 30
///         snapshotsToKeep: 4
///       enabled: true
///       hourlySchedule:
///         minute: 50
///         snapshotsToKeep: 2
///       location: eastus
///       monthlySchedule:
///         daysOfMonth: 10,11,12
///         hour: 14
///         minute: 15
///         snapshotsToKeep: 5
///       resourceGroupName: myRG
///       snapshotPolicyName: snapshotPolicyName
///       weeklySchedule:
///         day: Wednesday
///         hour: 14
///         minute: 45
///         snapshotsToKeep: 3
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
/// $ pulumi import azure-native:netapp:SnapshotPolicy account1/snapshotPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}
/// ```
class SnapshotPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Schedule for daily snapshots
  late final pulumi.Output<DailyScheduleResponse?> dailySchedule;
  /// The property to decide policy is enabled or not
  late final pulumi.Output<bool?> enabled;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Schedule for hourly snapshots
  late final pulumi.Output<HourlyScheduleResponse?> hourlySchedule;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Schedule for monthly snapshots
  late final pulumi.Output<MonthlyScheduleResponse?> monthlySchedule;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Schedule for weekly snapshots
  late final pulumi.Output<WeeklyScheduleResponse?> weeklySchedule;

  /// Creates a new [SnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotPolicy]. {@macro pulumi_netapp_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotPolicy(
    String name, {
    SnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:SnapshotPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dailySchedule = registerOutput<DailyScheduleResponse?>('dailySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DailyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    hourlySchedule = registerOutput<HourlyScheduleResponse?>('hourlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HourlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    monthlySchedule = registerOutput<MonthlyScheduleResponse?>('monthlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonthlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    weeklySchedule = registerOutput<WeeklyScheduleResponse?>('weeklySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WeeklyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SnapshotPolicy] resource.
  SnapshotPolicy.reference(String urn)
    : super(
        'azure-native:netapp:SnapshotPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dailySchedule = registerOutput<DailyScheduleResponse?>('dailySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DailyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    hourlySchedule = registerOutput<HourlyScheduleResponse?>('hourlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HourlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    monthlySchedule = registerOutput<MonthlyScheduleResponse?>('monthlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonthlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    weeklySchedule = registerOutput<WeeklyScheduleResponse?>('weeklySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WeeklyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
