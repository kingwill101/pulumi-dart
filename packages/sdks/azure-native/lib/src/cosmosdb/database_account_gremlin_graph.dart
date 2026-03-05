import 'package:pulumi/pulumi.dart' as pulumi;
import 'conflict_resolution_policy_response.dart';
import 'container_partition_key_response.dart';
import 'database_account_gremlin_graph_args.dart';
import 'indexing_policy_response.dart';
import 'unique_key_policy_response.dart';

/// An Azure Cosmos DB Gremlin graph.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var databaseAccountGremlinGraph = new AzureNative.CosmosDB.DatabaseAccountGremlinGraph("databaseAccountGremlinGraph", new()
///     {
///         AccountName = "ddb1",
///         DatabaseName = "databaseName",
///         GraphName = "graphName",
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
///                 IndexingMode = "Consistent",
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
/// 		_, err := cosmosdb.NewDatabaseAccountGremlinGraph(ctx, "databaseAccountGremlinGraph", &cosmosdb.DatabaseAccountGremlinGraphArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			DatabaseName: pulumi.String("databaseName"),
/// 			GraphName:    pulumi.String("graphName"),
/// 			Options:      pulumi.StringMap{},
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
/// 					IndexingMode: pulumi.String("Consistent"),
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountGremlinGraph;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountGremlinGraphArgs;
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
///         var databaseAccountGremlinGraph = new DatabaseAccountGremlinGraph("databaseAccountGremlinGraph", DatabaseAccountGremlinGraphArgs.builder()
///             .accountName("ddb1")
///             .databaseName("databaseName")
///             .graphName("graphName")
///             .options(Map.ofEntries(
///             ))
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
///                     .indexingMode("Consistent")
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
/// const databaseAccountGremlinGraph = new azure_native.cosmosdb.DatabaseAccountGremlinGraph("databaseAccountGremlinGraph", {
///     accountName: "ddb1",
///     databaseName: "databaseName",
///     graphName: "graphName",
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
///             indexingMode: "Consistent",
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_account_gremlin_graph = azure_native.cosmosdb.DatabaseAccountGremlinGraph("databaseAccountGremlinGraph",
///     account_name="ddb1",
///     database_name="databaseName",
///     graph_name="graphName",
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
///             "indexing_mode": "Consistent",
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
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountGremlinGraph:
///     type: azure-native:cosmosdb:DatabaseAccountGremlinGraph
///     properties:
///       accountName: ddb1
///       databaseName: databaseName
///       graphName: graphName
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
///           indexingMode: Consistent
///         partitionKey:
///           kind: Hash
///           paths:
///             - /AccountNumber
///         uniqueKeyPolicy:
///           uniqueKeys:
///             - paths:
///                 - /testPath
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountGremlinGraph graphName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/gremlin/databases/{databaseName}/graphs/{graphName}
/// ```
class DatabaseAccountGremlinGraph extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The conflict resolution policy for the graph.
  late final pulumi.Output<ConflictResolutionPolicyResponse?>
  conflictResolutionPolicy;

  /// Default time to live
  late final pulumi.Output<int?> defaultTtl;

  /// A system generated property representing the resource etag required for optimistic concurrency control.
  late final pulumi.Output<String?> etag;

  /// The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph
  late final pulumi.Output<IndexingPolicyResponse?> indexingPolicy;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the database account.
  late final pulumi.Output<String> name;

  /// The configuration of the partition key to be used for partitioning data into multiple partitions
  late final pulumi.Output<ContainerPartitionKeyResponse?> partitionKey;

  /// A system generated property. A unique identifier.
  late final pulumi.Output<String?> rid;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// A system generated property that denotes the last updated timestamp of the resource.
  late final pulumi.Output<dynamic> ts;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service.
  late final pulumi.Output<UniqueKeyPolicyResponse?> uniqueKeyPolicy;

  /// Creates a new [DatabaseAccountGremlinGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountGremlinGraph]. {@macro pulumi_cosmosdb_database_account_gremlin_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountGremlinGraph(
    String name, {
    DatabaseAccountGremlinGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:DatabaseAccountGremlinGraph',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    conflictResolutionPolicy =
        registerOutput<ConflictResolutionPolicyResponse?>(
          'conflictResolutionPolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ConflictResolutionPolicyResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    defaultTtl = registerOutput<int?>('defaultTtl');
    etag = registerOutput<String?>('etag');
    indexingPolicy = registerOutput<IndexingPolicyResponse?>(
      'indexingPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IndexingPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    partitionKey = registerOutput<ContainerPartitionKeyResponse?>(
      'partitionKey',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerPartitionKeyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rid = registerOutput<String?>('rid');
    tags = registerOutput<Map<String, String>?>('tags');
    ts = registerOutput<dynamic>('ts');
    type = registerOutput<String>('type');
    uniqueKeyPolicy = registerOutput<UniqueKeyPolicyResponse?>(
      'uniqueKeyPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UniqueKeyPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
