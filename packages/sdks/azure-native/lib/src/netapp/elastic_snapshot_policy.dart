import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_snapshot_policy_args.dart';
import 'elastic_snapshot_policy_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Snapshot Policy under an Elastic Account
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticSnapshotPolicies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticSnapshotPolicy = new AzureNative.NetApp.ElasticSnapshotPolicy("elasticSnapshotPolicy", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         Properties = new AzureNative.NetApp.Inputs.ElasticSnapshotPolicyPropertiesArgs
///         {
///             DailySchedule = new AzureNative.NetApp.Inputs.ElasticSnapshotPolicyDailyScheduleArgs
///             {
///                 Hour = 14,
///                 Minute = 30,
///                 SnapshotsToKeep = 4,
///             },
///             HourlySchedule = new AzureNative.NetApp.Inputs.ElasticSnapshotPolicyHourlyScheduleArgs
///             {
///                 Minute = 50,
///                 SnapshotsToKeep = 2,
///             },
///             MonthlySchedule = new AzureNative.NetApp.Inputs.ElasticSnapshotPolicyMonthlyScheduleArgs
///             {
///                 DaysOfMonth = new[]
///                 {
///                     10,
///                     11,
///                     12,
///                 },
///                 Hour = 14,
///                 Minute = 15,
///                 SnapshotsToKeep = 5,
///             },
///             PolicyStatus = AzureNative.NetApp.PolicyStatus.Enabled,
///             WeeklySchedule = new AzureNative.NetApp.Inputs.ElasticSnapshotPolicyWeeklyScheduleArgs
///             {
///                 Days = new[]
///                 {
///                     AzureNative.NetApp.DayOfWeek.Wednesday,
///                 },
///                 Hour = 14,
///                 Minute = 45,
///                 SnapshotsToKeep = 3,
///             },
///         },
///         ResourceGroupName = "myRG",
///         SnapshotPolicyName = "snapshotPolicyName",
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
/// 		_, err := netapp.NewElasticSnapshotPolicy(ctx, "elasticSnapshotPolicy", &netapp.ElasticSnapshotPolicyArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			Location:    pulumi.String("eastus"),
/// 			Properties: &netapp.ElasticSnapshotPolicyPropertiesArgs{
/// 				DailySchedule: &netapp.ElasticSnapshotPolicyDailyScheduleArgs{
/// 					Hour:            pulumi.Int(14),
/// 					Minute:          pulumi.Int(30),
/// 					SnapshotsToKeep: pulumi.Int(4),
/// 				},
/// 				HourlySchedule: &netapp.ElasticSnapshotPolicyHourlyScheduleArgs{
/// 					Minute:          pulumi.Int(50),
/// 					SnapshotsToKeep: pulumi.Int(2),
/// 				},
/// 				MonthlySchedule: &netapp.ElasticSnapshotPolicyMonthlyScheduleArgs{
/// 					DaysOfMonth: pulumi.IntArray{
/// 						pulumi.Int(10),
/// 						pulumi.Int(11),
/// 						pulumi.Int(12),
/// 					},
/// 					Hour:            pulumi.Int(14),
/// 					Minute:          pulumi.Int(15),
/// 					SnapshotsToKeep: pulumi.Int(5),
/// 				},
/// 				PolicyStatus: pulumi.String(netapp.PolicyStatusEnabled),
/// 				WeeklySchedule: &netapp.ElasticSnapshotPolicyWeeklyScheduleArgs{
/// 					Days: pulumi.StringArray{
/// 						pulumi.String(netapp.DayOfWeekWednesday),
/// 					},
/// 					Hour:            pulumi.Int(14),
/// 					Minute:          pulumi.Int(45),
/// 					SnapshotsToKeep: pulumi.Int(3),
/// 				},
/// 			},
/// 			ResourceGroupName:  pulumi.String("myRG"),
/// 			SnapshotPolicyName: pulumi.String("snapshotPolicyName"),
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
/// import com.pulumi.azurenative.netapp.ElasticSnapshotPolicy;
/// import com.pulumi.azurenative.netapp.ElasticSnapshotPolicyArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticSnapshotPolicyPropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticSnapshotPolicyDailyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticSnapshotPolicyHourlyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticSnapshotPolicyMonthlyScheduleArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticSnapshotPolicyWeeklyScheduleArgs;
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
///         var elasticSnapshotPolicy = new ElasticSnapshotPolicy("elasticSnapshotPolicy", ElasticSnapshotPolicyArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .properties(ElasticSnapshotPolicyPropertiesArgs.builder()
///                 .dailySchedule(ElasticSnapshotPolicyDailyScheduleArgs.builder()
///                     .hour(14)
///                     .minute(30)
///                     .snapshotsToKeep(4)
///                     .build())
///                 .hourlySchedule(ElasticSnapshotPolicyHourlyScheduleArgs.builder()
///                     .minute(50)
///                     .snapshotsToKeep(2)
///                     .build())
///                 .monthlySchedule(ElasticSnapshotPolicyMonthlyScheduleArgs.builder()
///                     .daysOfMonth(
///                         10,
///                         11,
///                         12)
///                     .hour(14)
///                     .minute(15)
///                     .snapshotsToKeep(5)
///                     .build())
///                 .policyStatus("Enabled")
///                 .weeklySchedule(ElasticSnapshotPolicyWeeklyScheduleArgs.builder()
///                     .days("Wednesday")
///                     .hour(14)
///                     .minute(45)
///                     .snapshotsToKeep(3)
///                     .build())
///                 .build())
///             .resourceGroupName("myRG")
///             .snapshotPolicyName("snapshotPolicyName")
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
/// const elasticSnapshotPolicy = new azure_native.netapp.ElasticSnapshotPolicy("elasticSnapshotPolicy", {
///     accountName: "account1",
///     location: "eastus",
///     properties: {
///         dailySchedule: {
///             hour: 14,
///             minute: 30,
///             snapshotsToKeep: 4,
///         },
///         hourlySchedule: {
///             minute: 50,
///             snapshotsToKeep: 2,
///         },
///         monthlySchedule: {
///             daysOfMonth: [
///                 10,
///                 11,
///                 12,
///             ],
///             hour: 14,
///             minute: 15,
///             snapshotsToKeep: 5,
///         },
///         policyStatus: azure_native.netapp.PolicyStatus.Enabled,
///         weeklySchedule: {
///             days: [azure_native.netapp.DayOfWeek.Wednesday],
///             hour: 14,
///             minute: 45,
///             snapshotsToKeep: 3,
///         },
///     },
///     resourceGroupName: "myRG",
///     snapshotPolicyName: "snapshotPolicyName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_snapshot_policy = azure_native.netapp.ElasticSnapshotPolicy("elasticSnapshotPolicy",
///     account_name="account1",
///     location="eastus",
///     properties={
///         "daily_schedule": {
///             "hour": 14,
///             "minute": 30,
///             "snapshots_to_keep": 4,
///         },
///         "hourly_schedule": {
///             "minute": 50,
///             "snapshots_to_keep": 2,
///         },
///         "monthly_schedule": {
///             "days_of_month": [
///                 10,
///                 11,
///                 12,
///             ],
///             "hour": 14,
///             "minute": 15,
///             "snapshots_to_keep": 5,
///         },
///         "policy_status": azure_native.netapp.PolicyStatus.ENABLED,
///         "weekly_schedule": {
///             "days": [azure_native.netapp.DayOfWeek.WEDNESDAY],
///             "hour": 14,
///             "minute": 45,
///             "snapshots_to_keep": 3,
///         },
///     },
///     resource_group_name="myRG",
///     snapshot_policy_name="snapshotPolicyName")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticSnapshotPolicy:
///     type: azure-native:netapp:ElasticSnapshotPolicy
///     properties:
///       accountName: account1
///       location: eastus
///       properties:
///         dailySchedule:
///           hour: 14
///           minute: 30
///           snapshotsToKeep: 4
///         hourlySchedule:
///           minute: 50
///           snapshotsToKeep: 2
///         monthlySchedule:
///           daysOfMonth:
///             - 10
///             - 11
///             - 12
///           hour: 14
///           minute: 15
///           snapshotsToKeep: 5
///         policyStatus: Enabled
///         weeklySchedule:
///           days:
///             - Wednesday
///           hour: 14
///           minute: 45
///           snapshotsToKeep: 3
///       resourceGroupName: myRG
///       snapshotPolicyName: snapshotPolicyName
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
/// $ pulumi import azure-native:netapp:ElasticSnapshotPolicy account1/snapshotPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticSnapshotPolicies/{snapshotPolicyName}
/// ```
class ElasticSnapshotPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticSnapshotPolicyPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticSnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticSnapshotPolicy]. {@macro pulumi_netapp_elastic_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticSnapshotPolicy(
    String name, {
    ElasticSnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:netapp:ElasticSnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticSnapshotPolicyPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ElasticSnapshotPolicyPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
