import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_backup_args.dart';
import 'elastic_backup_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Backup under an elastic Backup Vault
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticBackups_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticBackup = new AzureNative.NetApp.ElasticBackup("elasticBackup", new()
///     {
///         AccountName = "account1",
///         BackupName = "backup1",
///         BackupVaultName = "backupVault1",
///         Properties = new AzureNative.NetApp.Inputs.ElasticBackupPropertiesArgs
///         {
///             ElasticSnapshotResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1",
///             ElasticVolumeResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1",
///             Label = "myLabel",
///             SnapshotUsage = AzureNative.NetApp.SnapshotUsage.UseExistingSnapshot,
///         },
///         ResourceGroupName = "myRG",
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
/// 		_, err := netapp.NewElasticBackup(ctx, "elasticBackup", &netapp.ElasticBackupArgs{
/// 			AccountName:     pulumi.String("account1"),
/// 			BackupName:      pulumi.String("backup1"),
/// 			BackupVaultName: pulumi.String("backupVault1"),
/// 			Properties: &netapp.ElasticBackupPropertiesArgs{
/// 				ElasticSnapshotResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1"),
/// 				ElasticVolumeResourceId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1"),
/// 				Label:                     pulumi.String("myLabel"),
/// 				SnapshotUsage:             pulumi.String(netapp.SnapshotUsageUseExistingSnapshot),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
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
/// import com.pulumi.azurenative.netapp.ElasticBackup;
/// import com.pulumi.azurenative.netapp.ElasticBackupArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticBackupPropertiesArgs;
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
///         var elasticBackup = new ElasticBackup("elasticBackup", ElasticBackupArgs.builder()
///             .accountName("account1")
///             .backupName("backup1")
///             .backupVaultName("backupVault1")
///             .properties(ElasticBackupPropertiesArgs.builder()
///                 .elasticSnapshotResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1")
///                 .elasticVolumeResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1")
///                 .label("myLabel")
///                 .snapshotUsage("UseExistingSnapshot")
///                 .build())
///             .resourceGroupName("myRG")
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
/// const elasticBackup = new azure_native.netapp.ElasticBackup("elasticBackup", {
///     accountName: "account1",
///     backupName: "backup1",
///     backupVaultName: "backupVault1",
///     properties: {
///         elasticSnapshotResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1",
///         elasticVolumeResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1",
///         label: "myLabel",
///         snapshotUsage: azure_native.netapp.SnapshotUsage.UseExistingSnapshot,
///     },
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_backup = azure_native.netapp.ElasticBackup("elasticBackup",
///     account_name="account1",
///     backup_name="backup1",
///     backup_vault_name="backupVault1",
///     properties={
///         "elastic_snapshot_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1",
///         "elastic_volume_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1",
///         "label": "myLabel",
///         "snapshot_usage": azure_native.netapp.SnapshotUsage.USE_EXISTING_SNAPSHOT,
///     },
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticBackup:
///     type: azure-native:netapp:ElasticBackup
///     properties:
///       accountName: account1
///       backupName: backup1
///       backupVaultName: backupVault1
///       properties:
///         elasticSnapshotResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1/elasticSnapshots/snap1
///         elasticVolumeResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticCapacityPools/pool1/elasticVolumes/volume1
///         label: myLabel
///         snapshotUsage: UseExistingSnapshot
///       resourceGroupName: myRG
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
/// $ pulumi import azure-native:netapp:ElasticBackup account1/backupVault1/backup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticBackupVaults/{backupVaultName}/elasticBackups/{backupName}
/// ```
class ElasticBackup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBackupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBackup]. {@macro pulumi_netapp_elastic_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBackup(
    String name, {
    ElasticBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:netapp:ElasticBackup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBackupPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ElasticBackupPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
