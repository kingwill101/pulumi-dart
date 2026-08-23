import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_backup_args.dart';
import 'system_data_response.dart';

/// Backup of a Volume
///
/// Uses Azure REST API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Backups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolBackup = new AzureNative.NetApp.CapacityPoolBackup("capacityPoolBackup", new()
///     {
///         AccountName = "account1",
///         BackupName = "backup1",
///         Label = "myLabel",
///         Location = "eastus",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         VolumeName = "volume1",
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
/// 		_, err := netapp.NewCapacityPoolBackup(ctx, "capacityPoolBackup", &netapp.CapacityPoolBackupArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			BackupName:        pulumi.String("backup1"),
/// 			Label:             pulumi.String("myLabel"),
/// 			Location:          pulumi.String("eastus"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VolumeName:        pulumi.String("volume1"),
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
/// resource "azure-native_netapp_capacitypoolbackup" "capacityPoolBackup" {
///   account_name        = "account1"
///   backup_name         = "backup1"
///   label               = "myLabel"
///   location            = "eastus"
///   pool_name           = "pool1"
///   resource_group_name = "myRG"
///   volume_name         = "volume1"
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
/// import com.pulumi.azurenative.netapp.CapacityPoolBackup;
/// import com.pulumi.azurenative.netapp.CapacityPoolBackupArgs;
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
///         var capacityPoolBackup = new CapacityPoolBackup("capacityPoolBackup", CapacityPoolBackupArgs.builder()
///             .accountName("account1")
///             .backupName("backup1")
///             .label("myLabel")
///             .location("eastus")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .volumeName("volume1")
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
/// const capacityPoolBackup = new azure_native.netapp.CapacityPoolBackup("capacityPoolBackup", {
///     accountName: "account1",
///     backupName: "backup1",
///     label: "myLabel",
///     location: "eastus",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_backup = azure_native.netapp.CapacityPoolBackup("capacityPoolBackup",
///     account_name="account1",
///     backup_name="backup1",
///     label="myLabel",
///     location="eastus",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolBackup:
///     type: azure-native:netapp:CapacityPoolBackup
///     properties:
///       accountName: account1
///       backupName: backup1
///       label: myLabel
///       location: eastus
///       poolName: pool1
///       resourceGroupName: myRG
///       volumeName: volume1
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
/// $ pulumi import azure-native:netapp:CapacityPoolBackup account1/pool1/volume1/backup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}/backups/{backupName}
/// ```
class CapacityPoolBackup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// UUID v4 used to identify the Backup
  late final pulumi.Output<String> backupId;
  /// Type of backup Manual or Scheduled
  late final pulumi.Output<String> backupType;
  /// The creation date of the backup
  late final pulumi.Output<String> creationDate;
  /// Failure reason
  late final pulumi.Output<String> failureReason;
  /// Label for backup
  late final pulumi.Output<String?> label;
  /// Resource location
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Size of backup
  late final pulumi.Output<double> size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  late final pulumi.Output<bool?> useExistingSnapshot;
  /// Volume name
  late final pulumi.Output<String> volumeName;

  /// Creates a new [CapacityPoolBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolBackup]. {@macro pulumi_netapp_capacity_pool_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolBackup(
    String name, {
    CapacityPoolBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupId = registerOutput<String>('backupId');
    backupType = registerOutput<String>('backupType');
    creationDate = registerOutput<String>('creationDate');
    failureReason = registerOutput<String>('failureReason');
    label = registerOutput<String?>('label');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    size = registerOutput<double>('size');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    useExistingSnapshot = registerOutput<bool?>('useExistingSnapshot');
    volumeName = registerOutput<String>('volumeName');
  }
}
