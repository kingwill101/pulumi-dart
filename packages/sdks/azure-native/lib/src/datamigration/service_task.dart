import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_mongo_db_task_properties_response.dart';
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datamigration.ServiceTask;
/// import com.pulumi.azurenative.datamigration.ServiceTaskArgs;
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
///         var serviceTask = new ServiceTask("serviceTask", ServiceTaskArgs.builder()
///             .groupName("DmsSdkRg")
///             .properties(ConnectToSourceMySqlTaskPropertiesArgs.builder()
///                 .input(ConnectToSourceMySqlTaskInputArgs.builder()
///                     .sourceConnectionInfo(Map.ofEntries(
///                         Map.entry("port", 3306),
///                         Map.entry("serverName", "localhost"),
///                         Map.entry("type", "MySqlConnectionInfo")
///                     ))
///                     .build())
///                 .taskType("ConnectToSource.MySql")
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
  late final pulumi.Output<ConnectToMongoDbTaskPropertiesResponse> properties;

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
    properties = registerOutput<ConnectToMongoDbTaskPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectToMongoDbTaskPropertiesResponse.fromMap(
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
