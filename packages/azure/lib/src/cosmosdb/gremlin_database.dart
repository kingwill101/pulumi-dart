import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_database_args.dart';
import 'gremlin_database_autoscale_settings.dart';

/// Manages a Gremlin Database within a Cosmos DB Account.
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
///     throughput: 400,
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
///     account_name=example.name,
///     throughput=400)
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
///         Throughput = 400,
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
/// 		_, err = cosmosdb.NewGremlinDatabase(ctx, "example", &cosmosdb.GremlinDatabaseArgs{
/// 			Name:              pulumi.String("tfex-cosmos-gremlin-db"),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			AccountName:       pulumi.String(example.Name),
/// 			Throughput:        pulumi.Int(400),
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
///             .throughput(400)
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
///       throughput: 400
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
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DocumentDB` - 2024-08-15
///
/// ## Import
///
/// CosmosDB Gremlin Databases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/gremlinDatabase:GremlinDatabase db1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.DocumentDB/databaseAccounts/account1/gremlinDatabases/db1
/// ```
class GremlinDatabase extends pulumi.CustomResource {
  /// The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  late final pulumi.Output<GremlinDatabaseAutoscaleSettings?> autoscaleSettings;
  /// Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual resource destroy-apply.
  ///
  /// > **Note:** throughput has a maximum value of `1000000` unless a higher limit is requested via Azure Support
  late final pulumi.Output<int> throughput;

  /// Creates a new [GremlinDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GremlinDatabase]. {@macro pulumi_cosmosdb_gremlin_database_gremlin_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GremlinDatabase(
    String name, {
    GremlinDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/gremlinDatabase:GremlinDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.autoscaleSettings = registerOutput<GremlinDatabaseAutoscaleSettings?>('autoscaleSettings');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.throughput = registerOutput<int>('throughput');
  }
}
