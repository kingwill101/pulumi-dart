import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'system_data_response.dart';

/// Backup under a Backup Vault
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-05-01-preview, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BackupsUnderBackupVault_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backup = new AzureNative.NetApp.Backup("backup", new()
///     {
///         AccountName = "account1",
///         BackupName = "backup1",
///         BackupVaultName = "backupVault1",
///         Label = "myLabel",
///         ResourceGroupName = "myRG",
///         VolumeResourceId = "/subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1",
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
/// 		_, err := netapp.NewBackup(ctx, "backup", &netapp.BackupArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			BackupName:        pulumi.String("backup1"),
/// 			BackupVaultName:   pulumi.String("backupVault1"),
/// 			Label:             pulumi.String("myLabel"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VolumeResourceId:  pulumi.String("/subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1"),
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
/// import com.pulumi.azurenative.netapp.Backup;
/// import com.pulumi.azurenative.netapp.BackupArgs;
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
///         var backup = new Backup("backup", BackupArgs.builder()
///             .accountName("account1")
///             .backupName("backup1")
///             .backupVaultName("backupVault1")
///             .label("myLabel")
///             .resourceGroupName("myRG")
///             .volumeResourceId("/subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1")
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
/// const backup = new azure_native.netapp.Backup("backup", {
///     accountName: "account1",
///     backupName: "backup1",
///     backupVaultName: "backupVault1",
///     label: "myLabel",
///     resourceGroupName: "myRG",
///     volumeResourceId: "/subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup = azure_native.netapp.Backup("backup",
///     account_name="account1",
///     backup_name="backup1",
///     backup_vault_name="backupVault1",
///     label="myLabel",
///     resource_group_name="myRG",
///     volume_resource_id="/subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   backup:
///     type: azure-native:netapp:Backup
///     properties:
///       accountName: account1
///       backupName: backup1
///       backupVaultName: backupVault1
///       label: myLabel
///       resourceGroupName: myRG
///       volumeResourceId: /subscriptions/D633CC2E-722B-4AE1-B636-BBD9E4C60ED9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPool/pool1/volumes/volume1
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
/// $ pulumi import azure-native:netapp:Backup account1/backupVault1/backup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/backupVaults/{backupVaultName}/backups/{backupName}
/// ```
class Backup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// UUID v4 used to identify the Backup
  late final pulumi.Output<String> backupId;
  /// ResourceId used to identify the backup policy
  late final pulumi.Output<String> backupPolicyResourceId;
  /// Type of backup Manual or Scheduled
  late final pulumi.Output<String> backupType;
  /// The creation date of the backup
  late final pulumi.Output<String> creationDate;
  /// Failure reason
  late final pulumi.Output<String> failureReason;
  /// Label for backup
  late final pulumi.Output<String?> label;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Size of backup in bytes
  late final pulumi.Output<double> size;
  /// The name of the snapshot
  late final pulumi.Output<String?> snapshotName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  late final pulumi.Output<bool?> useExistingSnapshot;
  /// ResourceId used to identify the Volume
  late final pulumi.Output<String> volumeResourceId;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_netapp_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backupId = registerOutput<String>('backupId');
    this.backupPolicyResourceId = registerOutput<String>('backupPolicyResourceId');
    this.backupType = registerOutput<String>('backupType');
    this.creationDate = registerOutput<String>('creationDate');
    this.failureReason = registerOutput<String>('failureReason');
    this.label = registerOutput<String?>('label');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.size = registerOutput<double>('size');
    this.snapshotName = registerOutput<String?>('snapshotName');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.useExistingSnapshot = registerOutput<bool?>('useExistingSnapshot');
    this.volumeResourceId = registerOutput<String>('volumeResourceId');
  }
}
