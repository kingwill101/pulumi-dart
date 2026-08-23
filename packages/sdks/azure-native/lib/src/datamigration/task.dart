import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_mongo_db_task_properties_response.dart';
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
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datamigration_task" "task" {
///   group_name   = "DmsSdkRg"
///   project_name = "DmsSdkProject"
///   properties = {
///     "input" = {
///       "targetConnectionInfo" = {
///         "authentication"         = "SqlAuthentication"
///         "dataSource"             = "ssma-test-server.database.windows.net"
///         "encryptConnection"      = true
///         "password"               = "testpassword"
///         "trustServerCertificate" = true
///         "type"                   = "SqlConnectionInfo"
///         "userName"               = "testuser"
///       }
///     }
///     "taskType" = "ConnectToTarget.SqlDb"
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
///                     .targetConnectionInfo(Map.ofEntries(
///                         Map.entry("authentication", "SqlAuthentication"),
///                         Map.entry("dataSource", "ssma-test-server.database.windows.net"),
///                         Map.entry("encryptConnection", true),
///                         Map.entry("password", "testpassword"),
///                         Map.entry("trustServerCertificate", true),
///                         Map.entry("type", "SqlConnectionInfo"),
///                         Map.entry("userName", "testuser")
///                     ))
///                     .build())
///                 .taskType("ConnectToTarget.SqlDb")
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
  late final pulumi.Output<ConnectToMongoDbTaskPropertiesResponse> properties;
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
    properties = registerOutput<ConnectToMongoDbTaskPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectToMongoDbTaskPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
