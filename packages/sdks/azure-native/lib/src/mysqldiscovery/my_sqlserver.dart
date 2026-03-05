import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sqlserver_args.dart';
import 'system_data_response.dart';

/// The MySQLServer resource definition.
///
/// Uses Azure REST API version 2024-09-30-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-30-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MySQLServers_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySQLServer = new AzureNative.MySQLDiscovery.MySQLServer("mySQLServer", new()
///     {
///         HostIp = new[]
///         {
///             "127.0.0.1",
///             "127.0.0.2",
///         },
///         HostName = "test.mysql.server",
///         MachineId = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx",
///         MysqlVersion = "8.0",
///         NumberOfDatabase = 16,
///         PortNumber = "3306",
///         ResourceGroupName = "testrg",
///         ServerName = "testServerName",
///         SiteName = "testSite",
///         SupportStatus = AzureNative.MySQLDiscovery.SupportStatus.Mainstream,
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
/// 	mysqldiscovery "github.com/pulumi/pulumi-azure-native-sdk/mysqldiscovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mysqldiscovery.NewMySQLServer(ctx, "mySQLServer", &mysqldiscovery.MySQLServerArgs{
/// 			HostIp: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 				pulumi.String("127.0.0.2"),
/// 			},
/// 			HostName:          pulumi.String("test.mysql.server"),
/// 			MachineId:         pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx"),
/// 			MysqlVersion:      pulumi.String("8.0"),
/// 			NumberOfDatabase:  pulumi.Float64(16),
/// 			PortNumber:        pulumi.String("3306"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ServerName:        pulumi.String("testServerName"),
/// 			SiteName:          pulumi.String("testSite"),
/// 			SupportStatus:     pulumi.String(mysqldiscovery.SupportStatusMainstream),
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
/// import com.pulumi.azurenative.mysqldiscovery.MySQLServer;
/// import com.pulumi.azurenative.mysqldiscovery.MySQLServerArgs;
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
///         var mySQLServer = new MySQLServer("mySQLServer", MySQLServerArgs.builder()
///             .hostIp(
///                 "127.0.0.1",
///                 "127.0.0.2")
///             .hostName("test.mysql.server")
///             .machineId("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx")
///             .mysqlVersion("8.0")
///             .numberOfDatabase(16.0)
///             .portNumber("3306")
///             .resourceGroupName("testrg")
///             .serverName("testServerName")
///             .siteName("testSite")
///             .supportStatus("Mainstream")
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
/// const mySQLServer = new azure_native.mysqldiscovery.MySQLServer("mySQLServer", {
///     hostIp: [
///         "127.0.0.1",
///         "127.0.0.2",
///     ],
///     hostName: "test.mysql.server",
///     machineId: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx",
///     mysqlVersion: "8.0",
///     numberOfDatabase: 16,
///     portNumber: "3306",
///     resourceGroupName: "testrg",
///     serverName: "testServerName",
///     siteName: "testSite",
///     supportStatus: azure_native.mysqldiscovery.SupportStatus.Mainstream,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// my_sql_server = azure_native.mysqldiscovery.MySQLServer("mySQLServer",
///     host_ip=[
///         "127.0.0.1",
///         "127.0.0.2",
///     ],
///     host_name="test.mysql.server",
///     machine_id="/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx",
///     mysql_version="8.0",
///     number_of_database=16,
///     port_number="3306",
///     resource_group_name="testrg",
///     server_name="testServerName",
///     site_name="testSite",
///     support_status=azure_native.mysqldiscovery.SupportStatus.MAINSTREAM)
///
/// ```
///
/// ```yaml
/// resources:
///   mySQLServer:
///     type: azure-native:mysqldiscovery:MySQLServer
///     properties:
///       hostIp:
///         - 127.0.0.1
///         - 127.0.0.2
///       hostName: test.mysql.server
///       machineId: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourcegroups/demoRG/providers/Microsoft.OffAzure/serverSites/xxx/machines/xxx
///       mysqlVersion: '8.0'
///       numberOfDatabase: 16
///       portNumber: '3306'
///       resourceGroupName: testrg
///       serverName: testServerName
///       siteName: testSite
///       supportStatus: Mainstream
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
/// $ pulumi import azure-native:mysqldiscovery:MySQLServer testServerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MySQLDiscovery/MySQLSites/{siteName}/MySQLServers/{serverName}
/// ```
class MySQLServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// mysql server edition.
  late final pulumi.Output<String?> edition;

  /// The list of errors.
  late final pulumi.Output<List<Map<String, dynamic>>?> errors;

  /// The Server IP/host name.
  late final pulumi.Output<List<String>?> hostIp;

  /// The Server IP/host name.
  late final pulumi.Output<String> hostName;

  /// Resource labels.
  late final pulumi.Output<Map<String, String>?> labels;

  /// discovery Machine Id
  late final pulumi.Output<String?> machineId;

  /// The mysql server version.
  late final pulumi.Output<String?> mysqlVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The number of database.
  late final pulumi.Output<double?> numberOfDatabase;

  /// MySQL Server port number
  late final pulumi.Output<String> portNumber;

  /// Gets or sets the provisioning state.
  late final pulumi.Output<String?> provisioningState;

  /// Time when mysql version support end.
  late final pulumi.Output<String?> supportEndIn;

  /// mysql version support status.
  late final pulumi.Output<String?> supportStatus;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MySQLServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MySQLServer]. {@macro pulumi_mysqldiscovery_my_sqlserver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MySQLServer(
    String name, {
    MySQLServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mysqldiscovery:MySQLServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    edition = registerOutput<String?>('edition');
    errors = registerOutput<List<Map<String, dynamic>>?>('errors');
    hostIp = registerOutput<List<String>?>('hostIp');
    hostName = registerOutput<String>('hostName');
    labels = registerOutput<Map<String, String>?>('labels');
    machineId = registerOutput<String?>('machineId');
    mysqlVersion = registerOutput<String?>('mysqlVersion');
    this.name = registerOutput<String>('name');
    numberOfDatabase = registerOutput<double?>('numberOfDatabase');
    portNumber = registerOutput<String>('portNumber');
    provisioningState = registerOutput<String?>('provisioningState');
    supportEndIn = registerOutput<String?>('supportEndIn');
    supportStatus = registerOutput<String?>('supportStatus');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
