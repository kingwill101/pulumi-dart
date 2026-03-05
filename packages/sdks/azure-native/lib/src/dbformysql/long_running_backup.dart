import 'package:pulumi/pulumi.dart' as pulumi;
import 'long_running_backup_args.dart';
import 'system_data_response.dart';

/// Server backup properties
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create backup for a server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var longRunningBackup = new AzureNative.DBforMySQL.LongRunningBackup("longRunningBackup", new()
///     {
///         BackupName = "testback",
///         ResourceGroupName = "TestGroup",
///         ServerName = "mysqltestserver",
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewLongRunningBackup(ctx, "longRunningBackup", &dbformysql.LongRunningBackupArgs{
/// 			BackupName:        pulumi.String("testback"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("mysqltestserver"),
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
/// import com.pulumi.azurenative.dbformysql.LongRunningBackup;
/// import com.pulumi.azurenative.dbformysql.LongRunningBackupArgs;
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
///         var longRunningBackup = new LongRunningBackup("longRunningBackup", LongRunningBackupArgs.builder()
///             .backupName("testback")
///             .resourceGroupName("TestGroup")
///             .serverName("mysqltestserver")
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
/// const longRunningBackup = new azure_native.dbformysql.LongRunningBackup("longRunningBackup", {
///     backupName: "testback",
///     resourceGroupName: "TestGroup",
///     serverName: "mysqltestserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// long_running_backup = azure_native.dbformysql.LongRunningBackup("longRunningBackup",
///     backup_name="testback",
///     resource_group_name="TestGroup",
///     server_name="mysqltestserver")
///
/// ```
///
/// ```yaml
/// resources:
///   longRunningBackup:
///     type: azure-native:dbformysql:LongRunningBackup
///     properties:
///       backupName: testback
///       resourceGroupName: TestGroup
///       serverName: mysqltestserver
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
/// $ pulumi import azure-native:dbformysql:LongRunningBackup customer_20220507t073755_bb392c3b-17c6-4d3f-9742-8479ca87b3ac_mybackup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/backupsV2/{backupName}
/// ```
class LongRunningBackup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backup name
  late final pulumi.Output<String?> backupNameV2;
  late final pulumi.Output<String?> backupType;
  /// Backup completed time (ISO8601 format).
  late final pulumi.Output<String?> completedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of backup resource.
  late final pulumi.Output<String> provisioningState;
  /// Backup source
  late final pulumi.Output<String?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LongRunningBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LongRunningBackup]. {@macro pulumi_dbformysql_long_running_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LongRunningBackup(
    String name, {
    LongRunningBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:LongRunningBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupNameV2 = registerOutput<String?>('backupNameV2');
    backupType = registerOutput<String?>('backupType');
    completedTime = registerOutput<String?>('completedTime');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
