import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_account_cassandra_keyspace_args.dart';

/// An Azure Cosmos DB Cassandra keyspace.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBCassandraKeyspaceCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountCassandraKeyspace = new AzureNative.CosmosDB.DatabaseAccountCassandraKeyspace("databaseAccountCassandraKeyspace", new()
///     {
///         AccountName = "ddb1",
///         KeyspaceName = "keyspaceName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.CassandraKeyspaceResourceArgs
///         {
///             Id = "keyspaceName",
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
/// 		_, err := cosmosdb.NewDatabaseAccountCassandraKeyspace(ctx, "databaseAccountCassandraKeyspace", &cosmosdb.DatabaseAccountCassandraKeyspaceArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			KeyspaceName: pulumi.String("keyspaceName"),
/// 			Options:      pulumi.StringMap{},
/// 			Resource: &cosmosdb.CassandraKeyspaceResourceArgs{
/// 				Id: pulumi.String("keyspaceName"),
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountCassandraKeyspace;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountCassandraKeyspaceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraKeyspaceResourceArgs;
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
///         var databaseAccountCassandraKeyspace = new DatabaseAccountCassandraKeyspace("databaseAccountCassandraKeyspace", DatabaseAccountCassandraKeyspaceArgs.builder()
///             .accountName("ddb1")
///             .keyspaceName("keyspaceName")
///             .options(Map.ofEntries(
///             ))
///             .resource(CassandraKeyspaceResourceArgs.builder()
///                 .id("keyspaceName")
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
/// const databaseAccountCassandraKeyspace = new azure_native.cosmosdb.DatabaseAccountCassandraKeyspace("databaseAccountCassandraKeyspace", {
///     accountName: "ddb1",
///     keyspaceName: "keyspaceName",
///     options: {},
///     resource: {
///         id: "keyspaceName",
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
/// database_account_cassandra_keyspace = azure_native.cosmosdb.DatabaseAccountCassandraKeyspace("databaseAccountCassandraKeyspace",
///     account_name="ddb1",
///     keyspace_name="keyspaceName",
///     options={},
///     resource={
///         "id": "keyspaceName",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountCassandraKeyspace:
///     type: azure-native:cosmosdb:DatabaseAccountCassandraKeyspace
///     properties:
///       accountName: ddb1
///       keyspaceName: keyspaceName
///       options: {}
///       resource:
///         id: keyspaceName
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountCassandraKeyspace keyspaceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/cassandra/keyspaces/{keyspaceName}
/// ```
class DatabaseAccountCassandraKeyspace extends pulumi.CustomResource {
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

  /// Creates a new [DatabaseAccountCassandraKeyspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountCassandraKeyspace]. {@macro pulumi_cosmosdb_database_account_cassandra_keyspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountCassandraKeyspace(
    String name, {
    DatabaseAccountCassandraKeyspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:DatabaseAccountCassandraKeyspace',
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
