import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_get_properties_response_options.dart';
import 'gremlin_graph_get_properties_response_resource.dart';
import 'gremlin_resource_gremlin_graph_args.dart';

/// An Azure Cosmos DB Gremlin graph.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBGremlinGraphCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gremlinResourceGremlinGraph = new AzureNative.CosmosDB.GremlinResourceGremlinGraph("gremlinResourceGremlinGraph", new()
///     {
///         AccountName = "ddb1",
///         DatabaseName = "databaseName",
///         GraphName = "graphName",
///         Location = "West US",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.GremlinGraphResourceArgs
///         {
///             ConflictResolutionPolicy = new AzureNative.CosmosDB.Inputs.ConflictResolutionPolicyArgs
///             {
///                 ConflictResolutionPath = "/path",
///                 Mode = AzureNative.CosmosDB.ConflictResolutionMode.LastWriterWins,
///             },
///             DefaultTtl = 100,
///             Id = "graphName",
///             IndexingPolicy = new AzureNative.CosmosDB.Inputs.IndexingPolicyArgs
///             {
///                 Automatic = true,
///                 ExcludedPaths = new() { },
///                 IncludedPaths = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.IncludedPathArgs
///                     {
///                         Indexes = new[]
///                         {
///                             new AzureNative.CosmosDB.Inputs.IndexesArgs
///                             {
///                                 DataType = AzureNative.CosmosDB.DataType.String,
///                                 Kind = AzureNative.CosmosDB.IndexKind.Range,
///                                 Precision = -1,
///                             },
///                             new AzureNative.CosmosDB.Inputs.IndexesArgs
///                             {
///                                 DataType = AzureNative.CosmosDB.DataType.Number,
///                                 Kind = AzureNative.CosmosDB.IndexKind.Range,
///                                 Precision = -1,
///                             },
///                         },
///                         Path = "/*",
///                     },
///                 },
///                 IndexingMode = AzureNative.CosmosDB.IndexingMode.Consistent,
///             },
///             PartitionKey = new AzureNative.CosmosDB.Inputs.ContainerPartitionKeyArgs
///             {
///                 Kind = AzureNative.CosmosDB.PartitionKind.Hash,
///                 Paths = new[]
///                 {
///                     "/AccountNumber",
///                 },
///             },
///             UniqueKeyPolicy = new AzureNative.CosmosDB.Inputs.UniqueKeyPolicyArgs
///             {
///                 UniqueKeys = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.UniqueKeyArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/testPath",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags = null,
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
/// 		_, err := cosmosdb.NewGremlinResourceGremlinGraph(ctx, "gremlinResourceGremlinGraph", &cosmosdb.GremlinResourceGremlinGraphArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			DatabaseName: pulumi.String("databaseName"),
/// 			GraphName:    pulumi.String("graphName"),
/// 			Location:     pulumi.String("West US"),
/// 			Options:      &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.GremlinGraphResourceArgs{
/// 				ConflictResolutionPolicy: &cosmosdb.ConflictResolutionPolicyArgs{
/// 					ConflictResolutionPath: pulumi.String("/path"),
/// 					Mode:                   pulumi.String(cosmosdb.ConflictResolutionModeLastWriterWins),
/// 				},
/// 				DefaultTtl: pulumi.Int(100),
/// 				Id:         pulumi.String("graphName"),
/// 				IndexingPolicy: &cosmosdb.IndexingPolicyArgs{
/// 					Automatic:     pulumi.Bool(true),
/// 					ExcludedPaths: cosmosdb.ExcludedPathArray{},
/// 					IncludedPaths: cosmosdb.IncludedPathArray{
/// 						&cosmosdb.IncludedPathArgs{
/// 							Indexes: cosmosdb.IndexesArray{
/// 								&cosmosdb.IndexesArgs{
/// 									DataType:  pulumi.String(cosmosdb.DataTypeString),
/// 									Kind:      pulumi.String(cosmosdb.IndexKindRange),
/// 									Precision: pulumi.Int(-1),
/// 								},
/// 								&cosmosdb.IndexesArgs{
/// 									DataType:  pulumi.String(cosmosdb.DataTypeNumber),
/// 									Kind:      pulumi.String(cosmosdb.IndexKindRange),
/// 									Precision: pulumi.Int(-1),
/// 								},
/// 							},
/// 							Path: pulumi.String("/*"),
/// 						},
/// 					},
/// 					IndexingMode: pulumi.String(cosmosdb.IndexingModeConsistent),
/// 				},
/// 				PartitionKey: &cosmosdb.ContainerPartitionKeyArgs{
/// 					Kind: pulumi.String(cosmosdb.PartitionKindHash),
/// 					Paths: pulumi.StringArray{
/// 						pulumi.String("/AccountNumber"),
/// 					},
/// 				},
/// 				UniqueKeyPolicy: &cosmosdb.UniqueKeyPolicyArgs{
/// 					UniqueKeys: cosmosdb.UniqueKeyArray{
/// 						&cosmosdb.UniqueKeyArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/testPath"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.cosmosdb.GremlinResourceGremlinGraph;
/// import com.pulumi.azurenative.cosmosdb.GremlinResourceGremlinGraphArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.GremlinGraphResourceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ConflictResolutionPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.IndexingPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ContainerPartitionKeyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.UniqueKeyPolicyArgs;
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
///         var gremlinResourceGremlinGraph = new GremlinResourceGremlinGraph("gremlinResourceGremlinGraph", GremlinResourceGremlinGraphArgs.builder()
///             .accountName("ddb1")
///             .databaseName("databaseName")
///             .graphName("graphName")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(GremlinGraphResourceArgs.builder()
///                 .conflictResolutionPolicy(ConflictResolutionPolicyArgs.builder()
///                     .conflictResolutionPath("/path")
///                     .mode("LastWriterWins")
///                     .build())
///                 .defaultTtl(100)
///                 .id("graphName")
///                 .indexingPolicy(IndexingPolicyArgs.builder()
///                     .automatic(true)
///                     .excludedPaths()
///                     .includedPaths(IncludedPathArgs.builder()
///                         .indexes(
///                             IndexesArgs.builder()
///                                 .dataType("String")
///                                 .kind("Range")
///                                 .precision(-1)
///                                 .build(),
///                             IndexesArgs.builder()
///                                 .dataType("Number")
///                                 .kind("Range")
///                                 .precision(-1)
///                                 .build())
///                         .path("/*")
///                         .build())
///                     .indexingMode("consistent")
///                     .build())
///                 .partitionKey(ContainerPartitionKeyArgs.builder()
///                     .kind("Hash")
///                     .paths("/AccountNumber")
///                     .build())
///                 .uniqueKeyPolicy(UniqueKeyPolicyArgs.builder()
///                     .uniqueKeys(UniqueKeyArgs.builder()
///                         .paths("/testPath")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///             ))
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
/// const gremlinResourceGremlinGraph = new azure_native.cosmosdb.GremlinResourceGremlinGraph("gremlinResourceGremlinGraph", {
///     accountName: "ddb1",
///     databaseName: "databaseName",
///     graphName: "graphName",
///     location: "West US",
///     options: {},
///     resource: {
///         conflictResolutionPolicy: {
///             conflictResolutionPath: "/path",
///             mode: azure_native.cosmosdb.ConflictResolutionMode.LastWriterWins,
///         },
///         defaultTtl: 100,
///         id: "graphName",
///         indexingPolicy: {
///             automatic: true,
///             excludedPaths: [],
///             includedPaths: [{
///                 indexes: [
///                     {
///                         dataType: azure_native.cosmosdb.DataType.String,
///                         kind: azure_native.cosmosdb.IndexKind.Range,
///                         precision: -1,
///                     },
///                     {
///                         dataType: azure_native.cosmosdb.DataType.Number,
///                         kind: azure_native.cosmosdb.IndexKind.Range,
///                         precision: -1,
///                     },
///                 ],
///                 path: "/*",
///             }],
///             indexingMode: azure_native.cosmosdb.IndexingMode.Consistent,
///         },
///         partitionKey: {
///             kind: azure_native.cosmosdb.PartitionKind.Hash,
///             paths: ["/AccountNumber"],
///         },
///         uniqueKeyPolicy: {
///             uniqueKeys: [{
///                 paths: ["/testPath"],
///             }],
///         },
///     },
///     resourceGroupName: "rg1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gremlin_resource_gremlin_graph = azure_native.cosmosdb.GremlinResourceGremlinGraph("gremlinResourceGremlinGraph",
///     account_name="ddb1",
///     database_name="databaseName",
///     graph_name="graphName",
///     location="West US",
///     options={},
///     resource={
///         "conflict_resolution_policy": {
///             "conflict_resolution_path": "/path",
///             "mode": azure_native.cosmosdb.ConflictResolutionMode.LAST_WRITER_WINS,
///         },
///         "default_ttl": 100,
///         "id": "graphName",
///         "indexing_policy": {
///             "automatic": True,
///             "excluded_paths": [],
///             "included_paths": [{
///                 "indexes": [
///                     {
///                         "data_type": azure_native.cosmosdb.DataType.STRING,
///                         "kind": azure_native.cosmosdb.IndexKind.RANGE,
///                         "precision": -1,
///                     },
///                     {
///                         "data_type": azure_native.cosmosdb.DataType.NUMBER,
///                         "kind": azure_native.cosmosdb.IndexKind.RANGE,
///                         "precision": -1,
///                     },
///                 ],
///                 "path": "/*",
///             }],
///             "indexing_mode": azure_native.cosmosdb.IndexingMode.CONSISTENT,
///         },
///         "partition_key": {
///             "kind": azure_native.cosmosdb.PartitionKind.HASH,
///             "paths": ["/AccountNumber"],
///         },
///         "unique_key_policy": {
///             "unique_keys": [{
///                 "paths": ["/testPath"],
///             }],
///         },
///     },
///     resource_group_name="rg1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   gremlinResourceGremlinGraph:
///     type: azure-native:cosmosdb:GremlinResourceGremlinGraph
///     properties:
///       accountName: ddb1
///       databaseName: databaseName
///       graphName: graphName
///       location: West US
///       options: {}
///       resource:
///         conflictResolutionPolicy:
///           conflictResolutionPath: /path
///           mode: LastWriterWins
///         defaultTtl: 100
///         id: graphName
///         indexingPolicy:
///           automatic: true
///           excludedPaths: []
///           includedPaths:
///             - indexes:
///                 - dataType: String
///                   kind: Range
///                   precision: -1
///                 - dataType: Number
///                   kind: Range
///                   precision: -1
///               path: /*
///           indexingMode: consistent
///         partitionKey:
///           kind: Hash
///           paths:
///             - /AccountNumber
///         uniqueKeyPolicy:
///           uniqueKeys:
///             - paths:
///                 - /testPath
///       resourceGroupName: rg1
///       tags: {}
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
/// $ pulumi import azure-native:cosmosdb:GremlinResourceGremlinGraph graphName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/gremlinDatabases/{databaseName}/graphs/{graphName}
/// ```
class GremlinResourceGremlinGraph extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<GremlinGraphGetPropertiesResponseOptions?> options;
  late final pulumi.Output<GremlinGraphGetPropertiesResponseResource?> resource;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [GremlinResourceGremlinGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GremlinResourceGremlinGraph]. {@macro pulumi_cosmosdb_gremlin_resource_gremlin_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GremlinResourceGremlinGraph(
    String name, {
    GremlinResourceGremlinGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:GremlinResourceGremlinGraph',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<GremlinGraphGetPropertiesResponseOptions?>(
      'options',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GremlinGraphGetPropertiesResponseOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resource = registerOutput<GremlinGraphGetPropertiesResponseResource?>(
      'resource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GremlinGraphGetPropertiesResponseResource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
