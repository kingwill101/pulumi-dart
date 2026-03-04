import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_table_args.dart';

/// An Azure Cosmos DB Table.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBTableReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountTable = new AzureNative.CosmosDB.DatabaseAccountTable("databaseAccountTable", new()
///     {
///         AccountName = "ddb1",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.TableResourceArgs
///         {
///             Id = "tableName",
///         },
///         ResourceGroupName = "rg1",
///         TableName = "tableName",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewDatabaseAccountTable(ctx, "databaseAccountTable", &cosmosdb.DatabaseAccountTableArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Options:     pulumi.StringMap{},
/// 			Resource: &cosmosdb.TableResourceArgs{
/// 				Id: pulumi.String("tableName"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			TableName:         pulumi.String("tableName"),
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountTable;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountTableArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.TableResourceArgs;
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
///         var databaseAccountTable = new DatabaseAccountTable("databaseAccountTable", DatabaseAccountTableArgs.builder()
///             .accountName("ddb1")
///             .options(Map.ofEntries(
///             ))
///             .resource(TableResourceArgs.builder()
///                 .id("tableName")
///                 .build())
///             .resourceGroupName("rg1")
///             .tableName("tableName")
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
/// const databaseAccountTable = new azure_native.cosmosdb.DatabaseAccountTable("databaseAccountTable", {
///     accountName: "ddb1",
///     options: {},
///     resource: {
///         id: "tableName",
///     },
///     resourceGroupName: "rg1",
///     tableName: "tableName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_account_table = azure_native.cosmosdb.DatabaseAccountTable("databaseAccountTable",
///     account_name="ddb1",
///     options={},
///     resource={
///         "id": "tableName",
///     },
///     resource_group_name="rg1",
///     table_name="tableName")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountTable:
///     type: azure-native:cosmosdb:DatabaseAccountTable
///     properties:
///       accountName: ddb1
///       options: {}
///       resource:
///         id: tableName
///       resourceGroupName: rg1
///       tableName: tableName
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountTable tableName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/table/tables/{tableName}
/// ```
class DatabaseAccountTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the database account.
  late final pulumi.Output<String> name;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseAccountTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountTable]. {@macro pulumi_cosmosdb_database_account_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountTable(
    String name, {
    DatabaseAccountTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:DatabaseAccountTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
