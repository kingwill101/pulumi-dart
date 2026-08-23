import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'system_data_response.dart';

/// Represents a Database.
///
/// Uses Azure REST API version 2023-12-30. In version 2.x of the Azure Native provider, it used API version 2022-01-01.
///
/// Other available API versions: 2022-01-01, 2023-06-01-preview, 2023-06-30, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a database
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.DBforMySQL.Database("database", new()
///     {
///         Charset = "utf8",
///         Collation = "utf8_general_ci",
///         DatabaseName = "db1",
///         ResourceGroupName = "TestGroup",
///         ServerName = "testserver",
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
/// 		_, err := dbformysql.NewDatabase(ctx, "database", &dbformysql.DatabaseArgs{
/// 			Charset:           pulumi.String("utf8"),
/// 			Collation:         pulumi.String("utf8_general_ci"),
/// 			DatabaseName:      pulumi.String("db1"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("testserver"),
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
/// resource "azure-native_dbformysql_database" "database" {
///   charset             = "utf8"
///   collation           = "utf8_general_ci"
///   database_name       = "db1"
///   resource_group_name = "TestGroup"
///   server_name         = "testserver"
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
/// import com.pulumi.azurenative.dbformysql.Database;
/// import com.pulumi.azurenative.dbformysql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .charset("utf8")
///             .collation("utf8_general_ci")
///             .databaseName("db1")
///             .resourceGroupName("TestGroup")
///             .serverName("testserver")
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
/// const database = new azure_native.dbformysql.Database("database", {
///     charset: "utf8",
///     collation: "utf8_general_ci",
///     databaseName: "db1",
///     resourceGroupName: "TestGroup",
///     serverName: "testserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.dbformysql.Database("database",
///     charset="utf8",
///     collation="utf8_general_ci",
///     database_name="db1",
///     resource_group_name="TestGroup",
///     server_name="testserver")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:dbformysql:Database
///     properties:
///       charset: utf8
///       collation: utf8_general_ci
///       databaseName: db1
///       resourceGroupName: TestGroup
///       serverName: testserver
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
/// $ pulumi import azure-native:dbformysql:Database db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/databases/{databaseName}
/// ```
class Database extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The charset of the database.
  late final pulumi.Output<String?> charset;
  /// The collation of the database.
  late final pulumi.Output<String?> collation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_dbformysql_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    charset = registerOutput<String?>('charset');
    collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
