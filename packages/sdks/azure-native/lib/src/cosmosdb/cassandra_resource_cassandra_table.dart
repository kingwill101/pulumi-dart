import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_resource_cassandra_table_args.dart';
import 'cassandra_table_get_properties_response_options.dart';
import 'cassandra_table_get_properties_response_resource.dart';

/// An Azure Cosmos DB Cassandra table.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var cassandraResourceCassandraTable = new AzureNative.CosmosDB.CassandraResourceCassandraTable("cassandraResourceCassandraTable", new()
///     {
///         AccountName = "ddb1",
///         KeyspaceName = "keyspaceName",
///         Location = "West US",
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
/// 		_, err := cosmosdb.NewCassandraResourceCassandraTable(ctx, "cassandraResourceCassandraTable", &cosmosdb.CassandraResourceCassandraTableArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			KeyspaceName: pulumi.String("keyspaceName"),
/// 			Location:     pulumi.String("West US"),
/// 			Options:      &cosmosdb.CreateUpdateOptionsArgs{},
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
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraTable;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraTableArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraTableResourceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraSchemaArgs;
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
///         var cassandraResourceCassandraTable = new CassandraResourceCassandraTable("cassandraResourceCassandraTable", CassandraResourceCassandraTableArgs.builder()
///             .accountName("ddb1")
///             .keyspaceName("keyspaceName")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
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
/// const cassandraResourceCassandraTable = new azure_native.cosmosdb.CassandraResourceCassandraTable("cassandraResourceCassandraTable", {
///     accountName: "ddb1",
///     keyspaceName: "keyspaceName",
///     location: "West US",
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
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cassandra_resource_cassandra_table = azure_native.cosmosdb.CassandraResourceCassandraTable("cassandraResourceCassandraTable",
///     account_name="ddb1",
///     keyspace_name="keyspaceName",
///     location="West US",
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
///     table_name="tableName",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraResourceCassandraTable:
///     type: azure-native:cosmosdb:CassandraResourceCassandraTable
///     properties:
///       accountName: ddb1
///       keyspaceName: keyspaceName
///       location: West US
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
/// $ pulumi import azure-native:cosmosdb:CassandraResourceCassandraTable tableName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/cassandraKeyspaces/{keyspaceName}/tables/{tableName}
/// ```
class CassandraResourceCassandraTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<CassandraTableGetPropertiesResponseOptions?> options;
  late final pulumi.Output<CassandraTableGetPropertiesResponseResource?>
  resource;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraResourceCassandraTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraResourceCassandraTable]. {@macro pulumi_cosmosdb_cassandra_resource_cassandra_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraResourceCassandraTable(
    String name, {
    CassandraResourceCassandraTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:CassandraResourceCassandraTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<CassandraTableGetPropertiesResponseOptions?>(
      'options',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CassandraTableGetPropertiesResponseOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resource = registerOutput<CassandraTableGetPropertiesResponseResource?>(
      'resource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CassandraTableGetPropertiesResponseResource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
