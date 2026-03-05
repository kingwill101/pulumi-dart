import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_mongo_dbdatabase_args.dart';

/// An Azure Cosmos DB MongoDB database.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBMongoDBDatabaseCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountMongoDBDatabase = new AzureNative.CosmosDB.DatabaseAccountMongoDBDatabase("databaseAccountMongoDBDatabase", new()
///     {
///         AccountName = "ddb1",
///         DatabaseName = "databaseName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.MongoDBDatabaseResourceArgs
///         {
///             Id = "updatedDatabaseName",
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := cosmosdb.NewDatabaseAccountMongoDBDatabase(ctx, "databaseAccountMongoDBDatabase", &cosmosdb.DatabaseAccountMongoDBDatabaseArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			DatabaseName: pulumi.String("databaseName"),
/// 			Options:      pulumi.StringMap{},
/// 			Resource: &cosmosdb.MongoDBDatabaseResourceArgs{
/// 				Id: pulumi.String("updatedDatabaseName"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountMongoDBDatabase;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountMongoDBDatabaseArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.MongoDBDatabaseResourceArgs;
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
///         var databaseAccountMongoDBDatabase = new DatabaseAccountMongoDBDatabase("databaseAccountMongoDBDatabase", DatabaseAccountMongoDBDatabaseArgs.builder()
///             .accountName("ddb1")
///             .databaseName("databaseName")
///             .options(Map.ofEntries(
///             ))
///             .resource(MongoDBDatabaseResourceArgs.builder()
///                 .id("updatedDatabaseName")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const databaseAccountMongoDBDatabase = new azure_native.cosmosdb.DatabaseAccountMongoDBDatabase("databaseAccountMongoDBDatabase", {
///     accountName: "ddb1",
///     databaseName: "databaseName",
///     options: {},
///     resource: {
///         id: "updatedDatabaseName",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_account_mongo_db_database = azure_native.cosmosdb.DatabaseAccountMongoDBDatabase("databaseAccountMongoDBDatabase",
///     account_name="ddb1",
///     database_name="databaseName",
///     options={},
///     resource={
///         "id": "updatedDatabaseName",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountMongoDBDatabase:
///     type: azure-native:cosmosdb:DatabaseAccountMongoDBDatabase
///     properties:
///       accountName: ddb1
///       databaseName: databaseName
///       options: {}
///       resource:
///         id: updatedDatabaseName
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountMongoDBDatabase updatedDatabaseName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/mongodb/databases/{databaseName}
/// ```
class DatabaseAccountMongoDBDatabase extends pulumi.CustomResource {
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

  /// Creates a new [DatabaseAccountMongoDBDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountMongoDBDatabase]. {@macro pulumi_cosmosdb_database_account_mongo_dbdatabase_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountMongoDBDatabase(
    String name, {
    DatabaseAccountMongoDBDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:DatabaseAccountMongoDBDatabase',
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
