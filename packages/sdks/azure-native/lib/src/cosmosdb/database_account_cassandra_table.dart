import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_schema_response.dart';
import 'database_account_cassandra_table_args.dart';

/// An Azure Cosmos DB Cassandra table.
///
/// Uses Azure REST API version 2016-03-31.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBCassandraTableCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccountCassandraTable = new AzureNative.CosmosDB.DatabaseAccountCassandraTable("databaseAccountCassandraTable", new()
///     {
///         AccountName = "ddb1",
///         KeyspaceName = "tableName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.CassandraTableResourceArgs
///         {
///             DefaultTtl = 100,
///             Id = "tableName",
///             Schema = new AzureNative.CosmosDB.Inputs.CassandraSchemaArgs
///             {
///                 ClusterKeys = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.ClusterKeyArgs
///                     {
///                         Name = "columnA",
///                         OrderBy = "Asc",
///                     },
///                 },
///                 Columns = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.ColumnArgs
///                     {
///                         Name = "columnA",
///                         Type = "Ascii",
///                     },
///                 },
///                 PartitionKeys = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.CassandraPartitionKeyArgs
///                     {
///                         Name = "columnA",
///                     },
///                 },
///             },
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
/// 		_, err := cosmosdb.NewDatabaseAccountCassandraTable(ctx, "databaseAccountCassandraTable", &cosmosdb.DatabaseAccountCassandraTableArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			KeyspaceName: pulumi.String("tableName"),
/// 			Options:      pulumi.StringMap{},
/// 			Resource: &cosmosdb.CassandraTableResourceArgs{
/// 				DefaultTtl: pulumi.Int(100),
/// 				Id:         pulumi.String("tableName"),
/// 				Schema: &cosmosdb.CassandraSchemaArgs{
/// 					ClusterKeys: cosmosdb.ClusterKeyArray{
/// 						&cosmosdb.ClusterKeyArgs{
/// 							Name:    pulumi.String("columnA"),
/// 							OrderBy: pulumi.String("Asc"),
/// 						},
/// 					},
/// 					Columns: cosmosdb.ColumnArray{
/// 						&cosmosdb.ColumnArgs{
/// 							Name: pulumi.String("columnA"),
/// 							Type: pulumi.String("Ascii"),
/// 						},
/// 					},
/// 					PartitionKeys: cosmosdb.CassandraPartitionKeyArray{
/// 						&cosmosdb.CassandraPartitionKeyArgs{
/// 							Name: pulumi.String("columnA"),
/// 						},
/// 					},
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cosmosdb_databaseaccountcassandratable" "databaseAccountCassandraTable" {
///   account_name  = "ddb1"
///   keyspace_name = "tableName"
///   options       = {}
///   resource = {
///     default_ttl = 100
///     id          = "tableName"
///     schema = {
///       cluster_keys = [{
///         "name"    = "columnA"
///         "orderBy" = "Asc"
///       }]
///       columns = [{
///         "name" = "columnA"
///         "type" = "Ascii"
///       }]
///       partition_keys = [{
///         "name" = "columnA"
///       }]
///     }
///   }
///   resource_group_name = "rg1"
///   table_name          = "tableName"
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountCassandraTable;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountCassandraTableArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraTableResourceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraSchemaArgs;
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
///         var databaseAccountCassandraTable = new DatabaseAccountCassandraTable("databaseAccountCassandraTable", DatabaseAccountCassandraTableArgs.builder()
///             .accountName("ddb1")
///             .keyspaceName("tableName")
///             .options(Map.ofEntries(
///             ))
///             .resource(CassandraTableResourceArgs.builder()
///                 .defaultTtl(100)
///                 .id("tableName")
///                 .schema(CassandraSchemaArgs.builder()
///                     .clusterKeys(ClusterKeyArgs.builder()
///                         .name("columnA")
///                         .orderBy("Asc")
///                         .build())
///                     .columns(ColumnArgs.builder()
///                         .name("columnA")
///                         .type("Ascii")
///                         .build())
///                     .partitionKeys(CassandraPartitionKeyArgs.builder()
///                         .name("columnA")
///                         .build())
///                     .build())
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
/// const databaseAccountCassandraTable = new azure_native.cosmosdb.DatabaseAccountCassandraTable("databaseAccountCassandraTable", {
///     accountName: "ddb1",
///     keyspaceName: "tableName",
///     options: {},
///     resource: {
///         defaultTtl: 100,
///         id: "tableName",
///         schema: {
///             clusterKeys: [{
///                 name: "columnA",
///                 orderBy: "Asc",
///             }],
///             columns: [{
///                 name: "columnA",
///                 type: "Ascii",
///             }],
///             partitionKeys: [{
///                 name: "columnA",
///             }],
///         },
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
/// database_account_cassandra_table = azure_native.cosmosdb.DatabaseAccountCassandraTable("databaseAccountCassandraTable",
///     account_name="ddb1",
///     keyspace_name="tableName",
///     options={},
///     resource={
///         "default_ttl": 100,
///         "id": "tableName",
///         "schema": {
///             "cluster_keys": [{
///                 "name": "columnA",
///                 "order_by": "Asc",
///             }],
///             "columns": [{
///                 "name": "columnA",
///                 "type": "Ascii",
///             }],
///             "partition_keys": [{
///                 "name": "columnA",
///             }],
///         },
///     },
///     resource_group_name="rg1",
///     table_name="tableName")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccountCassandraTable:
///     type: azure-native:cosmosdb:DatabaseAccountCassandraTable
///     properties:
///       accountName: ddb1
///       keyspaceName: tableName
///       options: {}
///       resource:
///         defaultTtl: 100
///         id: tableName
///         schema:
///           clusterKeys:
///             - name: columnA
///               orderBy: Asc
///           columns:
///             - name: columnA
///               type: Ascii
///           partitionKeys:
///             - name: columnA
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccountCassandraTable tableName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/apis/cassandra/keyspaces/{keyspaceName}/tables/{tableName}
/// ```
class DatabaseAccountCassandraTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time to live of the Cosmos DB Cassandra table
  late final pulumi.Output<int?> defaultTtl;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// Schema of the Cosmos DB Cassandra table
  late final pulumi.Output<CassandraSchemaResponse?> schema;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseAccountCassandraTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccountCassandraTable]. {@macro pulumi_cosmosdb_database_account_cassandra_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccountCassandraTable(
    String name, {
    DatabaseAccountCassandraTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:DatabaseAccountCassandraTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultTtl = registerOutput<int?>('defaultTtl');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    schema = registerOutput<CassandraSchemaResponse?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraSchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
