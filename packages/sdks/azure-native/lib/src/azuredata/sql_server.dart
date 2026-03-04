import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_args.dart';

/// A SQL server.
///
/// Uses Azure REST API version 2019-07-24-preview. In version 2.x of the Azure Native provider, it used API version 2019-07-24-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a SQL Server in a Registration group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServer = new AzureNative.AzureData.SqlServer("sqlServer", new()
///     {
///         Cores = 8,
///         Edition = "Latin",
///         PropertyBag = "",
///         RegistrationID = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration",
///         ResourceGroupName = "testrg",
///         SqlServerName = "testsqlserver",
///         SqlServerRegistrationName = "testsqlregistration",
///         Version = "2008",
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
/// 	azuredata "github.com/pulumi/pulumi-azure-native-sdk/azuredata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredata.NewSqlServer(ctx, "sqlServer", &azuredata.SqlServerArgs{
/// 			Cores:                     pulumi.Int(8),
/// 			Edition:                   pulumi.String("Latin"),
/// 			PropertyBag:               pulumi.String(""),
/// 			RegistrationID:            pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration"),
/// 			ResourceGroupName:         pulumi.String("testrg"),
/// 			SqlServerName:             pulumi.String("testsqlserver"),
/// 			SqlServerRegistrationName: pulumi.String("testsqlregistration"),
/// 			Version:                   pulumi.String("2008"),
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
/// import com.pulumi.azurenative.azuredata.SqlServer;
/// import com.pulumi.azurenative.azuredata.SqlServerArgs;
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
///         var sqlServer = new SqlServer("sqlServer", SqlServerArgs.builder()
///             .cores(8)
///             .edition("Latin")
///             .propertyBag("")
///             .registrationID("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration")
///             .resourceGroupName("testrg")
///             .sqlServerName("testsqlserver")
///             .sqlServerRegistrationName("testsqlregistration")
///             .version("2008")
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
/// const sqlServer = new azure_native.azuredata.SqlServer("sqlServer", {
///     cores: 8,
///     edition: "Latin",
///     propertyBag: "",
///     registrationID: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration",
///     resourceGroupName: "testrg",
///     sqlServerName: "testsqlserver",
///     sqlServerRegistrationName: "testsqlregistration",
///     version: "2008",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_server = azure_native.azuredata.SqlServer("sqlServer",
///     cores=8,
///     edition="Latin",
///     property_bag="",
///     registration_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration",
///     resource_group_name="testrg",
///     sql_server_name="testsqlserver",
///     sql_server_registration_name="testsqlregistration",
///     version="2008")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServer:
///     type: azure-native:azuredata:SqlServer
///     properties:
///       cores: 8
///       edition: Latin
///       propertyBag: ""
///       registrationID: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureData/SqlServerRegistrations/testsqlregistration
///       resourceGroupName: testrg
///       sqlServerName: testsqlserver
///       sqlServerRegistrationName: testsqlregistration
///       version: '2008'
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
/// $ pulumi import azure-native:azuredata:SqlServer testsqlserver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureData/sqlServerRegistrations/{sqlServerRegistrationName}/sqlServers/{sqlServerName}
/// ```
class SqlServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Cores of the Sql Server.
  late final pulumi.Output<int?> cores;

  /// Sql Server Edition.
  late final pulumi.Output<String?> edition;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Sql Server Json Property Bag.
  late final pulumi.Output<String?> propertyBag;

  /// ID for Parent Sql Server Registration.
  late final pulumi.Output<String?> registrationID;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Version of the Sql Server.
  late final pulumi.Output<String?> version;

  /// Creates a new [SqlServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServer]. {@macro pulumi_azuredata_sql_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServer(
    String name, {
    SqlServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azuredata:SqlServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cores = registerOutput<int?>('cores');
    edition = registerOutput<String?>('edition');
    this.name = registerOutput<String>('name');
    propertyBag = registerOutput<String?>('propertyBag');
    registrationID = registerOutput<String?>('registrationID');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
