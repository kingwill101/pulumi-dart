import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'task_args.dart';

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
///     var task = new AzureNative.DataMigration.Task("task", new()
///     {
///         GroupName = "DmsSdkRg",
///         ProjectName = "DmsSdkProject",
///         Properties = new AzureNative.DataMigration.Inputs.ConnectToTargetSqlDbTaskPropertiesArgs
///         {
///             Input = new AzureNative.DataMigration.Inputs.ConnectToTargetSqlDbTaskInputArgs
///             {
///                 TargetConnectionInfo = new AzureNative.DataMigration.Inputs.SqlConnectionInfoArgs
///                 {
///                     Authentication = AzureNative.DataMigration.AuthenticationType.SqlAuthentication,
///                     DataSource = "ssma-test-server.database.windows.net",
///                     EncryptConnection = true,
///                     Password = "testpassword",
///                     TrustServerCertificate = true,
///                     Type = "SqlConnectionInfo",
///                     UserName = "testuser",
///                 },
///             },
///             TaskType = "ConnectToTarget.SqlDb",
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
/// 		_, err := datamigration.NewTask(ctx, "task", &datamigration.TaskArgs{
/// 			GroupName:   pulumi.String("DmsSdkRg"),
/// 			ProjectName: pulumi.String("DmsSdkProject"),
/// 			Properties: &datamigration.ConnectToTargetSqlDbTaskPropertiesArgs{
/// 				Input: &datamigration.ConnectToTargetSqlDbTaskInputArgs{
/// 					TargetConnectionInfo: &datamigration.SqlConnectionInfoArgs{
/// 						Authentication:         pulumi.String(datamigration.AuthenticationTypeSqlAuthentication),
/// 						DataSource:             pulumi.String("ssma-test-server.database.windows.net"),
/// 						EncryptConnection:      pulumi.Bool(true),
/// 						Password:               pulumi.String("testpassword"),
/// 						TrustServerCertificate: pulumi.Bool(true),
/// 						Type:                   pulumi.String("SqlConnectionInfo"),
/// 						UserName:               pulumi.String("testuser"),
/// 					},
/// 				},
/// 				TaskType: pulumi.String("ConnectToTarget.SqlDb"),
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
/// resource "azure-native_datamigration_task" "task" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   group_name   = "DmsSdkRg"
///   project_name = "DmsSdkProject"
///   properties = {
///     input = {
///       target_connection_info = {
///         authentication           = "SqlAuthentication"
///         data_source              = "ssma-test-server.database.windows.net"
///         encrypt_connection       = true
///         password                 = "testpassword"
///         trust_server_certificate = true
///         type                     = "SqlConnectionInfo"
///         user_name                = "testuser"
///       }
///     }
///     task_type = "ConnectToTarget.SqlDb"
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
/// import com.pulumi.azurenative.datamigration.Task;
/// import com.pulumi.azurenative.datamigration.TaskArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToMongoDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoDbConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceMySqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceMySqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceOracleSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceOracleSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourcePostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourcePostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToSourceSqlServerTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForMySqlTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForMySqlTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MySqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetAzureDbForPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.PostgreSqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlDbTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlDbTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInfoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMISyncTaskPropertiesArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ConnectToTargetSqlMISyncTaskInputArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MiSqlConnectionInfoArgs;
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
///         var task = new Task("task", TaskArgs.builder()
///             .groupName("DmsSdkRg")
///             .projectName("DmsSdkProject")
///             .properties(ConnectToTargetSqlDbTaskPropertiesArgs.builder()
///                 .input(ConnectToTargetSqlDbTaskInputArgs.builder()
///                     .targetConnectionInfo(SqlConnectionInfoArgs.builder()
///                         .authentication("SqlAuthentication")
///                         .dataSource("ssma-test-server.database.windows.net")
///                         .encryptConnection(true)
///                         .password("testpassword")
///                         .trustServerCertificate(true)
///                         .userName("testuser")
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
/// const task = new azure_native.datamigration.Task("task", {
///     groupName: "DmsSdkRg",
///     projectName: "DmsSdkProject",
///     properties: {
///         input: {
///             targetConnectionInfo: {
///                 authentication: azure_native.datamigration.AuthenticationType.SqlAuthentication,
///                 dataSource: "ssma-test-server.database.windows.net",
///                 encryptConnection: true,
///                 password: "testpassword",
///                 trustServerCertificate: true,
///                 type: "SqlConnectionInfo",
///                 userName: "testuser",
///             },
///         },
///         taskType: "ConnectToTarget.SqlDb",
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
/// task = azure_native.datamigration.Task("task",
///     group_name="DmsSdkRg",
///     project_name="DmsSdkProject",
///     properties={
///         "input": {
///             "target_connection_info": {
///                 "authentication": azure_native.datamigration.AuthenticationType.SQL_AUTHENTICATION,
///                 "data_source": "ssma-test-server.database.windows.net",
///                 "encrypt_connection": True,
///                 "password": "testpassword",
///                 "trust_server_certificate": True,
///                 "type": "SqlConnectionInfo",
///                 "user_name": "testuser",
///             },
///         },
///         "task_type": "ConnectToTarget.SqlDb",
///     },
///     service_name="DmsSdkService",
///     task_name="DmsSdkTask")
///
/// ```
///
/// ```yaml
/// resources:
///   task:
///     type: azure-native:datamigration:Task
///     properties:
///       groupName: DmsSdkRg
///       projectName: DmsSdkProject
///       properties:
///         input:
///           targetConnectionInfo:
///             authentication: SqlAuthentication
///             dataSource: ssma-test-server.database.windows.net
///             encryptConnection: true
///             password: testpassword
///             trustServerCertificate: true
///             type: SqlConnectionInfo
///             userName: testuser
///         taskType: ConnectToTarget.SqlDb
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
/// $ pulumi import azure-native:datamigration:Task DmsSdkTask /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}/tasks/{taskName}
/// ```
class Task extends pulumi.CustomResource {
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

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_datamigration_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:Task',
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

  /// Creates a typed reference to an existing [Task] resource.
  Task.reference(String urn)
    : super(
        'azure-native:datamigration:Task',
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
