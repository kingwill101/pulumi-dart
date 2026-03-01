import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_server_database_args.dart';

/// Represents a Database.
///
/// Uses Azure REST API version 2017-12-01.
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
///     var singleServerDatabase = new AzureNative.DBforPostgreSQL.SingleServerDatabase("singleServerDatabase", new()
///     {
///         Charset = "UTF8",
///         Collation = "English_United States.1252",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServerDatabase(ctx, "singleServerDatabase", &dbforpostgresql.SingleServerDatabaseArgs{
/// 			Charset:           pulumi.String("UTF8"),
/// 			Collation:         pulumi.String("English_United States.1252"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerDatabase;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerDatabaseArgs;
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
///         var singleServerDatabase = new SingleServerDatabase("singleServerDatabase", SingleServerDatabaseArgs.builder()
///             .charset("UTF8")
///             .collation("English_United States.1252")
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
/// const singleServerDatabase = new azure_native.dbforpostgresql.SingleServerDatabase("singleServerDatabase", {
///     charset: "UTF8",
///     collation: "English_United States.1252",
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
/// single_server_database = azure_native.dbforpostgresql.SingleServerDatabase("singleServerDatabase",
///     charset="UTF8",
///     collation="English_United States.1252",
///     database_name="db1",
///     resource_group_name="TestGroup",
///     server_name="testserver")
///
/// ```
///
/// ```yaml
/// resources:
///   singleServerDatabase:
///     type: azure-native:dbforpostgresql:SingleServerDatabase
///     properties:
///       charset: UTF8
///       collation: English_United States.1252
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
/// $ pulumi import azure-native:dbforpostgresql:SingleServerDatabase db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/servers/{serverName}/databases/{databaseName}
/// ```
class SingleServerDatabase extends pulumi.CustomResource {
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

  /// Creates a new [SingleServerDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServerDatabase]. {@macro pulumi_dbforpostgresql_single_server_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServerDatabase(
    String name, {
    SingleServerDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:SingleServerDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.charset = registerOutput<String?>('charset');
    this.collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
