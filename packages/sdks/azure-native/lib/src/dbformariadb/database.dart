import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';

/// Represents a Database.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DatabaseCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.DBforMariaDB.Database("database", new()
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewDatabase(ctx, "database", &dbformariadb.DatabaseArgs{
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
/// resource "azure-native_dbformariadb_database" "database" {
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
/// import com.pulumi.azurenative.dbformariadb.Database;
/// import com.pulumi.azurenative.dbformariadb.DatabaseArgs;
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
/// const database = new azure_native.dbformariadb.Database("database", {
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
/// database = azure_native.dbformariadb.Database("database",
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
///     type: azure-native:dbformariadb:Database
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
/// $ pulumi import azure-native:dbformariadb:Database db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMariaDB/servers/{serverName}/databases/{databaseName}
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
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_dbformariadb_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformariadb:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    charset = registerOutput<String?>('charset');
    collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
