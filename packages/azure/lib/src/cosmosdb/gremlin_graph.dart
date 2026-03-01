import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_args.dart';
import 'gremlin_graph_autoscale_settings.dart';
import 'gremlin_graph_conflict_resolution_policy.dart';
import 'gremlin_graph_index_policy.dart';
import 'gremlin_graph_unique_key.dart';

/// Manages a Gremlin Graph within a Cosmos DB Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cosmosdb.getAccount({
///     name: "tfex-cosmosdb-account",
///     resourceGroupName: "tfex-cosmosdb-account-rg",
/// });
/// const exampleGremlinDatabase = new azure.cosmosdb.GremlinDatabase("example", {
///     name: "tfex-cosmos-gremlin-db",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
/// });
/// const exampleGremlinGraph = new azure.cosmosdb.GremlinGraph("example", {
///     name: "tfex-cosmos-gremlin-graph",
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     accountName: example.then(example => example.name),
///     databaseName: exampleGremlinDatabase.name,
///     partitionKeyPath: "/Example",
///     throughput: 400,
///     indexPolicy: {
///         automatic: true,
///         indexingMode: "consistent",
///         includedPaths: ["/*"],
///         excludedPaths: ["/\"_etag\"/?"],
///     },
///     conflictResolutionPolicy: {
///         mode: "LastWriterWins",
///         conflictResolutionPath: "/_ts",
///     },
///     uniqueKeys: [{
///         paths: [
///             "/definition/id1",
///             "/definition/id2",
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_gremlin_database = azure.cosmosdb.GremlinDatabase("example",
///     name="tfex-cosmos-gremlin-db",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name)
/// example_gremlin_graph = azure.cosmosdb.GremlinGraph("example",
///     name="tfex-cosmos-gremlin-graph",
///     resource_group_name=example.resource_group_name,
///     account_name=example.name,
///     database_name=example_gremlin_database.name,
///     partition_key_path="/Example",
///     throughput=400,
///     index_policy={
///         "automatic": True,
///         "indexing_mode": "consistent",
///         "included_paths": ["/*"],
///         "excluded_paths": ["/\"_etag\"/?"],
///     },
///     conflict_resolution_policy={
///         "mode": "LastWriterWins",
///         "conflict_resolution_path": "/_ts",
///     },
///     unique_keys=[{
///         "paths": [
///             "/definition/id1",
///             "/definition/id2",
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.CosmosDB.GetAccount.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = "tfex-cosmosdb-account-rg",
///     });
///
///     var exampleGremlinDatabase = new Azure.CosmosDB.GremlinDatabase("example", new()
///     {
///         Name = "tfex-cosmos-gremlin-db",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///     });
///
///     var exampleGremlinGraph = new Azure.CosmosDB.GremlinGraph("example", new()
///     {
///         Name = "tfex-cosmos-gremlin-graph",
///         ResourceGroupName = example.Apply(getAccountResult => getAccountResult.ResourceGroupName),
///         AccountName = example.Apply(getAccountResult => getAccountResult.Name),
///         DatabaseName = exampleGremlinDatabase.Name,
///         PartitionKeyPath = "/Example",
///         Throughput = 400,
///         IndexPolicy = new Azure.CosmosDB.Inputs.GremlinGraphIndexPolicyArgs
///         {
///             Automatic = true,
///             IndexingMode = "consistent",
///             IncludedPaths = new[]
///             {
///                 "/*",
///             },
///             ExcludedPaths = new[]
///             {
///                 "/\"_etag\"/?",
///             },
///         },
///         ConflictResolutionPolicy = new Azure.CosmosDB.Inputs.GremlinGraphConflictResolutionPolicyArgs
///         {
///             Mode = "LastWriterWins",
///             ConflictResolutionPath = "/_ts",
///         },
///         UniqueKeys = new[]
///         {
///             new Azure.CosmosDB.Inputs.GremlinGraphUniqueKeyArgs
///             {
///                 Paths = new[]
///                 {
///                     "/definition/id1",
///                     "/definition/id2",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cosmosdb.LookupAccount(ctx, &cosmosdb.LookupAccountArgs{
/// 			Name:              "tfex-cosmosdb-account",
/// 			ResourceGroupName: "tfex-cosmosdb-account-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGremlinDatabase, err := cosmosdb.NewGremlinDatabase(ctx, "example", &cosmosdb.GremlinDatabaseArgs{
/// 			Name:              pulumi.String("tfex-cosmos-gremlin-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewGremlinGraph(ctx, "example", &cosmosdb.GremlinGraphArgs{
/// 			Name:              pulumi.String("tfex-cosmos-gremlin-graph"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			DatabaseName:      exampleGremlinDatabase.Name,
/// 			PartitionKeyPath:  pulumi.String("/Example"),
/// 			Throughput:        pulumi.Int(400),
/// 			IndexPolicy: &cosmosdb.GremlinGraphIndexPolicyArgs{
/// 				Automatic:    pulumi.Bool(true),
/// 				IndexingMode: pulumi.String("consistent"),
/// 				IncludedPaths: pulumi.StringArray{
/// 					pulumi.String("/*"),
/// 				},
/// 				ExcludedPaths: pulumi.StringArray{
/// 					pulumi.String("/\"_etag\"/?"),
/// 				},
/// 			},
/// 			ConflictResolutionPolicy: &cosmosdb.GremlinGraphConflictResolutionPolicyArgs{
/// 				Mode:                   pulumi.String("LastWriterWins"),
/// 				ConflictResolutionPath: pulumi.String("/_ts"),
/// 			},
/// 			UniqueKeys: cosmosdb.GremlinGraphUniqueKeyArray{
/// 				&cosmosdb.GremlinGraphUniqueKeyArgs{
/// 					Paths: pulumi.StringArray{
/// 						pulumi.String("/definition/id1"),
/// 						pulumi.String("/definition/id2"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
/// import com.pulumi.azure.cosmosdb.GremlinDatabase;
/// import com.pulumi.azure.cosmosdb.GremlinDatabaseArgs;
/// import com.pulumi.azure.cosmosdb.GremlinGraph;
/// import com.pulumi.azure.cosmosdb.GremlinGraphArgs;
/// import com.pulumi.azure.cosmosdb.inputs.GremlinGraphIndexPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.GremlinGraphConflictResolutionPolicyArgs;
/// import com.pulumi.azure.cosmosdb.inputs.GremlinGraphUniqueKeyArgs;
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
///         final var example = CosmosdbFunctions.getAccount(GetAccountArgs.builder()
///             .name("tfex-cosmosdb-account")
///             .resourceGroupName("tfex-cosmosdb-account-rg")
///             .build());
///
///         var exampleGremlinDatabase = new GremlinDatabase("exampleGremlinDatabase", GremlinDatabaseArgs.builder()
///             .name("tfex-cosmos-gremlin-db")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .build());
///
///         var exampleGremlinGraph = new GremlinGraph("exampleGremlinGraph", GremlinGraphArgs.builder()
///             .name("tfex-cosmos-gremlin-graph")
///             .resourceGroupName(example.resourceGroupName())
///             .accountName(example.name())
///             .databaseName(exampleGremlinDatabase.name())
///             .partitionKeyPath("/Example")
///             .throughput(400)
///             .indexPolicy(GremlinGraphIndexPolicyArgs.builder()
///                 .automatic(true)
///                 .indexingMode("consistent")
///                 .includedPaths("/*")
///                 .excludedPaths("/\"_etag\"/?")
///                 .build())
///             .conflictResolutionPolicy(GremlinGraphConflictResolutionPolicyArgs.builder()
///                 .mode("LastWriterWins")
///                 .conflictResolutionPath("/_ts")
///                 .build())
///             .uniqueKeys(GremlinGraphUniqueKeyArgs.builder()
///                 .paths(
///                     "/definition/id1",
///                     "/definition/id2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGremlinDatabase:
///     type: azure:cosmosdb:GremlinDatabase
///     name: example
///     properties:
///       name: tfex-cosmos-gremlin-db
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///   exampleGremlinGraph:
///     type: azure:cosmosdb:GremlinGraph
///     name: example
///     properties:
///       name: tfex-cosmos-gremlin-graph
///       resourceGroupName: ${example.resourceGroupName}
///       accountName: ${example.name}
///       databaseName: ${exampleGremlinDatabase.name}
///       partitionKeyPath: /Example
///       throughput: 400
///       indexPolicy:
///         automatic: true
///         indexingMode: consistent
///         includedPaths:
///           - /*
///         excludedPaths:
///           - /"_etag"/?
///       conflictResolutionPolicy:
///         mode: LastWriterWins
///         conflictResolutionPath: /_ts
///       uniqueKeys:
///         - paths:
///             - /definition/id1
///             - /definition/id2
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getAccount
///       arguments:
///         name: tfex-cosmosdb-account
///         resourceGroupName: tfex-cosmosdb-account-rg
/// ```
///
///
/// > **Note:** The CosmosDB Account needs to have the `EnableGremlin` capability enabled to use this resource - which can be done by adding this to the `capabilities` list within the `azure.cosmosdb.Account` resource.
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
///
/// ## Import
///
/// Cosmos Gremlin Graphs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/gremlinGraph:GremlinGraph example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/gremlinDatabases/db1/graphs/graphs1
/// ```
class GremlinGraph extends pulumi.CustomResource {
  /// The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire.
  ///
  /// > **Note:** Disabling `analytical_storage_ttl` will force a new resource to be created since it can't be disabled once it's enabled.
  late final pulumi.Output<int?> analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<GremlinGraphAutoscaleSettings?> autoscaleSettings;
  /// A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<GremlinGraphConflictResolutionPolicy> conflictResolutionPolicy;
  /// The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire.
  late final pulumi.Output<int?> defaultTtl;
  /// The configuration of the indexing policy. One or more `index_policy` blocks as defined below.
  late final pulumi.Output<GremlinGraphIndexPolicy> indexPolicy;
  /// Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Define a partition key. Changing this forces a new resource to be created.
  late final pulumi.Output<String> partitionKeyPath;
  /// Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  late final pulumi.Output<int?> partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  late final pulumi.Output<int> throughput;
  /// One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<GremlinGraphUniqueKey>?> uniqueKeys;

  /// Creates a new [GremlinGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GremlinGraph]. {@macro pulumi_cosmosdb_gremlin_graph_gremlin_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GremlinGraph(
    String name, {
    GremlinGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/gremlinGraph:GremlinGraph',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.analyticalStorageTtl = registerOutput<int?>('analyticalStorageTtl');
    this.autoscaleSettings = registerOutput<GremlinGraphAutoscaleSettings?>('autoscaleSettings');
    this.conflictResolutionPolicy = registerOutput<GremlinGraphConflictResolutionPolicy>('conflictResolutionPolicy');
    this.databaseName = registerOutput<String>('databaseName');
    this.defaultTtl = registerOutput<int?>('defaultTtl');
    this.indexPolicy = registerOutput<GremlinGraphIndexPolicy>('indexPolicy');
    this.name = registerOutput<String>('name');
    this.partitionKeyPath = registerOutput<String>('partitionKeyPath');
    this.partitionKeyVersion = registerOutput<int?>('partitionKeyVersion');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.throughput = registerOutput<int>('throughput');
    this.uniqueKeys = registerOutput<List<GremlinGraphUniqueKey>?>('uniqueKeys');
  }
}
