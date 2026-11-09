import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_args.dart';
import 'system_data_response.dart';

/// A task resource
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-30.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Tasks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceTask = new AzureNative.DataMigration.ServiceTask("serviceTask", new()
///     {
///         GroupName = "DmsSdkRg",
///         Properties = new AzureNative.DataMigration.Inputs.ConnectToSourceMySqlTaskPropertiesArgs
///         {
///             Input = new AzureNative.DataMigration.Inputs.ConnectToSourceMySqlTaskInputArgs
///             {
///                 SourceConnectionInfo = new AzureNative.DataMigration.Inputs.MySqlConnectionInfoArgs
///                 {
///                     Port = 3306,
///                     ServerName = "localhost",
///                     Type = "MySqlConnectionInfo",
///                 },
///             },
///             TaskType = "ConnectToSource.MySql",
///         },
///         ServiceName = "DmsSdkService",
///         TaskName = "DmsSdkTask",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewServiceTask(ctx, "serviceTask", &datamigration.ServiceTaskArgs{
/// 			GroupName: pulumi.String("DmsSdkRg"),
/// 			Properties: &datamigration.ConnectToSourceMySqlTaskPropertiesArgs{
/// 				Input: &datamigration.ConnectToSourceMySqlTaskInputArgs{
/// 					SourceConnectionInfo: &datamigration.MySqlConnectionInfoArgs{
/// 						Port:       pulumi.Int(3306),
/// 						ServerName: pulumi.String("localhost"),
/// 						Type:       pulumi.String("MySqlConnectionInfo"),
/// 					},
/// 				},
/// 				TaskType: pulumi.String("ConnectToSource.MySql"),
/// 			},
/// 			ServiceName: pulumi.String("DmsSdkService"),
/// 			TaskName:    pulumi.String("DmsSdkTask"),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datamigration_service_task" "serviceTask" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   group_name = "DmsSdkRg"
///   properties = {
///     input = {
///       source_connection_info = {
///         port        = 3306
///         server_name = "localhost"
///         type        = "MySqlConnectionInfo"
///       }
///     }
///     task_type = "ConnectToSource.MySql"
///   }
///   service_name = "DmsSdkService"
///   task_name    = "DmsSdkTask"
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
/// import com.pulumi.azurenative.datamigration.ServiceTask;
/// import com.pulumi.azurenative.datamigration.ServiceTaskArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToMongoDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoDbConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceMySqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceMySqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MySqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceOracleSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceOracleSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.OracleConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourcePostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourcePostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.PostgreSqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForMySqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForMySqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlDbTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMISyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMISyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMITaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMITaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlSqlDbSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlSqlDbSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetTdeCertificatesSqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetTdeCertificatesSqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesMySqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesMySqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesOracleTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesOracleTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesPostgreSqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesPostgreSqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesSqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.GetUserTablesSqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateMongoDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoDbMigrationSettingsArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateMySqlAzureDbForMySqlOfflineTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateMySqlAzureDbForMySqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateMySqlAzureDbForMySqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateOracleAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateOracleAzureDbPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlDbSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlDbSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlDbTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlMISyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlMISyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlMITaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSqlServerSqlMITaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSsisTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MigrateSsisTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMigrationInputSqlServerSqlDbSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateSyncMigrationInputSqlServerTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMigrationInputSqlServerSqlMISyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMigrationInputSqlServerSqlMISyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMigrationInputSqlServerSqlMITaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMigrationInputSqlServerSqlMITaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateMongoDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ValidateOracleAzureDbForPostgreSqlSyncTaskPropertiesArgs;
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
///         var serviceTask = new ServiceTask("serviceTask", ServiceTaskArgs.builder()
///             .groupName("DmsSdkRg")
///             .properties(ConnectToSourceMySqlTaskPropertiesArgs.builder()
///                 .input(ConnectToSourceMySqlTaskInputArgs.builder()
///                     .sourceConnectionInfo(MySqlConnectionInfoArgs.builder()
///                         .port(3306)
///                         .serverName("localhost")
///                         .build())
///                     .build())
///                 .build())
///             .serviceName("DmsSdkService")
///             .taskName("DmsSdkTask")
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
/// const serviceTask = new azure_native.datamigration.ServiceTask("serviceTask", {
///     groupName: "DmsSdkRg",
///     properties: {
///         input: {
///             sourceConnectionInfo: {
///                 port: 3306,
///                 serverName: "localhost",
///                 type: "MySqlConnectionInfo",
///             },
///         },
///         taskType: "ConnectToSource.MySql",
///     },
///     serviceName: "DmsSdkService",
///     taskName: "DmsSdkTask",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_task = azure_native.datamigration.ServiceTask("serviceTask",
///     group_name="DmsSdkRg",
///     properties={
///         "input": {
///             "source_connection_info": {
///                 "port": 3306,
///                 "server_name": "localhost",
///                 "type": "MySqlConnectionInfo",
///             },
///         },
///         "task_type": "ConnectToSource.MySql",
///     },
///     service_name="DmsSdkService",
///     task_name="DmsSdkTask")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceTask:
///     type: azure-native:datamigration:ServiceTask
///     properties:
///       groupName: DmsSdkRg
///       properties:
///         input:
///           sourceConnectionInfo:
///             port: 3306
///             serverName: localhost
///             type: MySqlConnectionInfo
///         taskType: ConnectToSource.MySql
///       serviceName: DmsSdkService
///       taskName: DmsSdkTask
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
/// $ pulumi import azure-native:datamigration:ServiceTask DmsSdkTask /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/serviceTasks/{taskName}
/// ```
class ServiceTask extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// HTTP strong entity tag value. This is ignored if submitted.
  late final pulumi.Output<String?> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Custom task properties
  late final pulumi.Output<dynamic> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceTask]. {@macro pulumi_datamigration_service_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceTask(
    String name, {
    ServiceTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:ServiceTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServiceTask] resource.
  ServiceTask.reference(String urn)
    : super(
        'azure-native:datamigration:ServiceTask',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
