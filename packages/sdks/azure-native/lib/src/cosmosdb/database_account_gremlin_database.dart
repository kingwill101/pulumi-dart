import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_gremlin_database_args.dart';

/// An Azure Cosmos DB Gremlin database.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBGremlinDatabaseCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountGremlinDatabase = new AzureNative.CosmosDB.DatabaseAccountGremlinDatabase("databaseAccountGremlinDatabase", new()
///     {
///         AccountName = "ddb1",
///         DatabaseName = "databaseName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.GremlinDatabaseResourceArgs
///         {
///             Id = "databaseName",
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
/// 		_, err := cosmosdb.NewDatabaseAccountGremlinDatabase(ctx, "databaseAccountGremlinDatabase", &cosmosdb.DatabaseAccountGremlinDatabaseArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			DatabaseName: pulumi.String("databaseName"),
/// 			Options:      pulumi.StringMap{},
/// 			Resource: &cosmosdb.GremlinDatabaseResourceArgs{
/// 				Id: pulumi.String("databaseName"),
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountGremlinDatabase;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountGremlinDatabaseArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.GremlinDatabaseResourceArgs;
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
///         var databaseAccountGremlinDatabase = new DatabaseAccountGremlinDatabase("databaseAccountGremlinDatabase", DatabaseAccountGremlinDatabaseArgs.builder()
///             .accountName("ddb1")
///             .databaseName("databaseName")
///             .options(Map.ofEntries(
///             ))
///             .resource(GremlinDatabaseResourceArgs.builder()
///                 .id("databaseName")
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
/// const databaseAccountGremlinDatabase = new azure_native.cosmosdb.DatabaseAccountGremlinDatabase("databaseAccountGremlinDatabase", {
///     accountName: "ddb1",
///     databaseName: "databaseName",
///     options: {},
///     resource: {
///         id: "databaseName",
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
/// database_account_gremlin_database = azure_native.cosmosdb.DatabaseAccountGremlinDatabase("databaseAccountGremlinDatabase",
///     account_name="ddb1",
///     database_name="databaseName",
///     options={},
///     resource={
///         "id": "databaseName",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountGremlinDatabase:
///     type: azure-native:cosmosdb:DatabaseAccountGremlinDatabase
///     properties:
///       accountName: ddb1
///       databaseName: databaseName
///       options: {}
///       resource:
///         id: databaseName
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountGremlinDatabase databaseName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/gremlin/databases/{databaseName}
/// ```
class DatabaseAccountGremlinDatabase extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A system generated property representing the resource etag required for optimistic concurrency control.
  late final pulumi.Output<String?> etag;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the database account.
  late final pulumi.Output<String> name;

  /// A system generated property. A unique identifier.
  late final pulumi.Output<String?> rid;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// A system generated property that denotes the last updated timestamp of the resource.
  late final pulumi.Output<dynamic> ts;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseAccountGremlinDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountGremlinDatabase]. {@macro pulumi_cosmosdb_database_account_gremlin_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountGremlinDatabase(
    String name, {
    DatabaseAccountGremlinDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:DatabaseAccountGremlinDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    rid = registerOutput<String?>('rid');
    tags = registerOutput<Map<String, String>?>('tags');
    ts = registerOutput<dynamic>('ts');
    type = registerOutput<String>('type');
  }
}
