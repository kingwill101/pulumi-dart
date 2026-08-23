import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_mongo_dbcollection_args.dart';

/// An Azure Cosmos DB MongoDB collection.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBMongoDBCollectionCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountMongoDBCollection = new AzureNative.CosmosDB.DatabaseAccountMongoDBCollection("databaseAccountMongoDBCollection", new()
///     {
///         AccountName = "ddb1",
///         CollectionName = "collectionName",
///         DatabaseName = "databaseName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.MongoDBCollectionResourceArgs
///         {
///             Id = "testcoll",
///             Indexes = new[]
///             {
///                 new AzureNative.CosmosDB.Inputs.MongoIndexArgs
///                 {
///                     Key = new AzureNative.CosmosDB.Inputs.MongoIndexKeysArgs
///                     {
///                         Keys = new[]
///                         {
///                             "testKey",
///                         },
///                     },
///                     Options = new AzureNative.CosmosDB.Inputs.MongoIndexOptionsArgs
///                     {
///                         ExpireAfterSeconds = 100,
///                         Unique = true,
///                     },
///                 },
///             },
///             ShardKey =
///             {
///                 { "testKey", "Hash" },
///             },
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
/// 		_, err := cosmosdb.NewDatabaseAccountMongoDBCollection(ctx, "databaseAccountMongoDBCollection", &cosmosdb.DatabaseAccountMongoDBCollectionArgs{
/// 			AccountName:    pulumi.String("ddb1"),
/// 			CollectionName: pulumi.String("collectionName"),
/// 			DatabaseName:   pulumi.String("databaseName"),
/// 			Options:        pulumi.StringMap{},
/// 			Resource: &cosmosdb.MongoDBCollectionResourceArgs{
/// 				Id: pulumi.String("testcoll"),
/// 				Indexes: cosmosdb.MongoIndexArray{
/// 					&cosmosdb.MongoIndexArgs{
/// 						Key: &cosmosdb.MongoIndexKeysArgs{
/// 							Keys: pulumi.StringArray{
/// 								pulumi.String("testKey"),
/// 							},
/// 						},
/// 						Options: &cosmosdb.MongoIndexOptionsArgs{
/// 							ExpireAfterSeconds: pulumi.Int(100),
/// 							Unique:             pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 				ShardKey: pulumi.StringMap{
/// 					"testKey": pulumi.String("Hash"),
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cosmosdb_databaseaccountmongodbcollection" "databaseAccountMongoDBCollection" {
///   account_name    = "ddb1"
///   collection_name = "collectionName"
///   database_name   = "databaseName"
///   options         = {}
///   resource = {
///     id = "testcoll"
///     indexes = [{
///       "key" = {
///         "keys" = ["testKey"]
///       }
///       "options" = {
///         "expireAfterSeconds" = 100
///         "unique"             = true
///       }
///     }]
///     shard_key = {
///       "testKey" = "Hash"
///     }
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountMongoDBCollection;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountMongoDBCollectionArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.MongoDBCollectionResourceArgs;
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
///         var databaseAccountMongoDBCollection = new DatabaseAccountMongoDBCollection("databaseAccountMongoDBCollection", DatabaseAccountMongoDBCollectionArgs.builder()
///             .accountName("ddb1")
///             .collectionName("collectionName")
///             .databaseName("databaseName")
///             .options(Map.ofEntries(
///             ))
///             .resource(MongoDBCollectionResourceArgs.builder()
///                 .id("testcoll")
///                 .indexes(MongoIndexArgs.builder()
///                     .key(MongoIndexKeysArgs.builder()
///                         .keys("testKey")
///                         .build())
///                     .options(MongoIndexOptionsArgs.builder()
///                         .expireAfterSeconds(100)
///                         .unique(true)
///                         .build())
///                     .build())
///                 .shardKey(Map.of("testKey", "Hash"))
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
/// const databaseAccountMongoDBCollection = new azure_native.cosmosdb.DatabaseAccountMongoDBCollection("databaseAccountMongoDBCollection", {
///     accountName: "ddb1",
///     collectionName: "collectionName",
///     databaseName: "databaseName",
///     options: {},
///     resource: {
///         id: "testcoll",
///         indexes: [{
///             key: {
///                 keys: ["testKey"],
///             },
///             options: {
///                 expireAfterSeconds: 100,
///                 unique: true,
///             },
///         }],
///         shardKey: {
///             testKey: "Hash",
///         },
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
/// database_account_mongo_db_collection = azure_native.cosmosdb.DatabaseAccountMongoDBCollection("databaseAccountMongoDBCollection",
///     account_name="ddb1",
///     collection_name="collectionName",
///     database_name="databaseName",
///     options={},
///     resource={
///         "id": "testcoll",
///         "indexes": [{
///             "key": {
///                 "keys": ["testKey"],
///             },
///             "options": {
///                 "expire_after_seconds": 100,
///                 "unique": True,
///             },
///         }],
///         "shard_key": {
///             "testKey": "Hash",
///         },
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountMongoDBCollection:
///     type: azure-native:cosmosdb:DatabaseAccountMongoDBCollection
///     properties:
///       accountName: ddb1
///       collectionName: collectionName
///       databaseName: databaseName
///       options: {}
///       resource:
///         id: testcoll
///         indexes:
///           - key:
///               keys:
///                 - testKey
///             options:
///               expireAfterSeconds: 100
///               unique: true
///         shardKey:
///           testKey: Hash
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountMongoDBCollection collectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/mongodb/databases/{databaseName}/collections/{collectionName}
/// ```
class DatabaseAccountMongoDBCollection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of index keys
  late final pulumi.Output<List<Map<String, dynamic>>?> indexes;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// A key-value pair of shard keys to be applied for the request.
  late final pulumi.Output<Map<String, String>?> shardKey;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseAccountMongoDBCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountMongoDBCollection]. {@macro pulumi_cosmosdb_database_account_mongo_dbcollection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountMongoDBCollection(
    String name, {
    DatabaseAccountMongoDBCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:DatabaseAccountMongoDBCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    indexes = registerOutput<List<Map<String, dynamic>>?>('indexes');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    shardKey = registerOutput<Map<String, String>?>('shardKey');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
