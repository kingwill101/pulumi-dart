import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'system_data_response.dart';

/// Backup policy information
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BackupPolicies_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupPolicy = new AzureNative.NetApp.BackupPolicy("backupPolicy", new()
///     {
///         AccountName = "account1",
///         BackupPolicyName = "backupPolicyName",
///         DailyBackupsToKeep = 10,
///         Enabled = true,
///         Location = "westus",
///         MonthlyBackupsToKeep = 10,
///         ResourceGroupName = "myRG",
///         WeeklyBackupsToKeep = 10,
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
/// 		_, err := netapp.NewBackupPolicy(ctx, "backupPolicy", &netapp.BackupPolicyArgs{
/// 			AccountName:          pulumi.String("account1"),
/// 			BackupPolicyName:     pulumi.String("backupPolicyName"),
/// 			DailyBackupsToKeep:   pulumi.Int(10),
/// 			Enabled:              pulumi.Bool(true),
/// 			Location:             pulumi.String("westus"),
/// 			MonthlyBackupsToKeep: pulumi.Int(10),
/// 			ResourceGroupName:    pulumi.String("myRG"),
/// 			WeeklyBackupsToKeep:  pulumi.Int(10),
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
/// import com.pulumi.azurenative.netapp.BackupPolicy;
/// import com.pulumi.azurenative.netapp.BackupPolicyArgs;
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
///         var backupPolicy = new BackupPolicy("backupPolicy", BackupPolicyArgs.builder()
///             .accountName("account1")
///             .backupPolicyName("backupPolicyName")
///             .dailyBackupsToKeep(10)
///             .enabled(true)
///             .location("westus")
///             .monthlyBackupsToKeep(10)
///             .resourceGroupName("myRG")
///             .weeklyBackupsToKeep(10)
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
/// const backupPolicy = new azure_native.netapp.BackupPolicy("backupPolicy", {
///     accountName: "account1",
///     backupPolicyName: "backupPolicyName",
///     dailyBackupsToKeep: 10,
///     enabled: true,
///     location: "westus",
///     monthlyBackupsToKeep: 10,
///     resourceGroupName: "myRG",
///     weeklyBackupsToKeep: 10,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_policy = azure_native.netapp.BackupPolicy("backupPolicy",
///     account_name="account1",
///     backup_policy_name="backupPolicyName",
///     daily_backups_to_keep=10,
///     enabled=True,
///     location="westus",
///     monthly_backups_to_keep=10,
///     resource_group_name="myRG",
///     weekly_backups_to_keep=10)
///
/// ```
///
/// ```yaml
/// resources:
///   backupPolicy:
///     type: azure-native:netapp:BackupPolicy
///     properties:
///       accountName: account1
///       backupPolicyName: backupPolicyName
///       dailyBackupsToKeep: 10
///       enabled: true
///       location: westus
///       monthlyBackupsToKeep: 10
///       resourceGroupName: myRG
///       weeklyBackupsToKeep: 10
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
/// $ pulumi import azure-native:netapp:BackupPolicy account1/backupPolicyName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/backupPolicies/{backupPolicyName}
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Backup Policy GUID ID
  late final pulumi.Output<String> backupPolicyId;

  /// Daily backups count to keep
  late final pulumi.Output<int?> dailyBackupsToKeep;

  /// The property to decide policy is enabled or not
  late final pulumi.Output<bool?> enabled;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Monthly backups count to keep
  late final pulumi.Output<int?> monthlyBackupsToKeep;

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

  /// A list of volumes assigned to this policy
  late final pulumi.Output<List<Map<String, dynamic>>> volumeBackups;

  /// Volumes using current backup policy
  late final pulumi.Output<int> volumesAssigned;

  /// Weekly backups count to keep
  late final pulumi.Output<int?> weeklyBackupsToKeep;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_netapp_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:netapp:BackupPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupPolicyId = registerOutput<String>('backupPolicyId');
    dailyBackupsToKeep = registerOutput<int?>('dailyBackupsToKeep');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    monthlyBackupsToKeep = registerOutput<int?>('monthlyBackupsToKeep');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    volumeBackups = registerOutput<List<Map<String, dynamic>>>('volumeBackups');
    volumesAssigned = registerOutput<int>('volumesAssigned');
    weeklyBackupsToKeep = registerOutput<int?>('weeklyBackupsToKeep');
  }
}
