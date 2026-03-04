import 'package:pulumi/pulumi.dart' as pulumi;
import 'backups_automatic_and_on_demand_args.dart';
import 'system_data_response.dart';

/// Properties of a backup.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2025-06-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an on demand backup of a server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupsAutomaticAndOnDemand = new AzureNative.DBforPostgreSQL.BackupsAutomaticAndOnDemand("backupsAutomaticAndOnDemand", new()
///     {
///         BackupName = "ondemandbackup-20250601T183022",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewBackupsAutomaticAndOnDemand(ctx, "backupsAutomaticAndOnDemand", &dbforpostgresql.BackupsAutomaticAndOnDemandArgs{
/// 			BackupName:        pulumi.String("ondemandbackup-20250601T183022"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
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
/// import com.pulumi.azurenative.dbforpostgresql.BackupsAutomaticAndOnDemand;
/// import com.pulumi.azurenative.dbforpostgresql.BackupsAutomaticAndOnDemandArgs;
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
///         var backupsAutomaticAndOnDemand = new BackupsAutomaticAndOnDemand("backupsAutomaticAndOnDemand", BackupsAutomaticAndOnDemandArgs.builder()
///             .backupName("ondemandbackup-20250601T183022")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
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
/// const backupsAutomaticAndOnDemand = new azure_native.dbforpostgresql.BackupsAutomaticAndOnDemand("backupsAutomaticAndOnDemand", {
///     backupName: "ondemandbackup-20250601T183022",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backups_automatic_and_on_demand = azure_native.dbforpostgresql.BackupsAutomaticAndOnDemand("backupsAutomaticAndOnDemand",
///     backup_name="ondemandbackup-20250601T183022",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver")
///
/// ```
///
/// ```yaml
/// resources:
///   backupsAutomaticAndOnDemand:
///     type: azure-native:dbforpostgresql:BackupsAutomaticAndOnDemand
///     properties:
///       backupName: ondemandbackup-20250601T183022
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
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
/// $ pulumi import azure-native:dbforpostgresql:BackupsAutomaticAndOnDemand myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/backups/{backupName}
/// ```
class BackupsAutomaticAndOnDemand extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Type of backup.
  late final pulumi.Output<String?> backupType;

  /// Time(ISO8601 format) at which the backup was completed.
  late final pulumi.Output<String?> completedTime;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Source of the backup.
  late final pulumi.Output<String?> source;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BackupsAutomaticAndOnDemand].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupsAutomaticAndOnDemand]. {@macro pulumi_dbforpostgresql_backups_automatic_and_on_demand_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupsAutomaticAndOnDemand(
    String name, {
    BackupsAutomaticAndOnDemandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dbforpostgresql:BackupsAutomaticAndOnDemand',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupType = registerOutput<String?>('backupType');
    completedTime = registerOutput<String?>('completedTime');
    this.name = registerOutput<String>('name');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
