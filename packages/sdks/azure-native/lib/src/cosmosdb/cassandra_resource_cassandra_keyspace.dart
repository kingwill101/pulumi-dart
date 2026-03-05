import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_keyspace_get_properties_response_options.dart';
import 'cassandra_keyspace_get_properties_response_resource.dart';
import 'cassandra_resource_cassandra_keyspace_args.dart';

/// An Azure Cosmos DB Cassandra keyspace.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var cassandraResourceCassandraKeyspace = new AzureNative.CosmosDB.CassandraResourceCassandraKeyspace("cassandraResourceCassandraKeyspace", new()
///     {
///         AccountName = "ddb1",
///         KeyspaceName = "keyspaceName",
///         Location = "West US",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.CassandraKeyspaceResourceArgs
///         {
///             Id = "keyspaceName",
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
/// 		_, err := cosmosdb.NewCassandraResourceCassandraKeyspace(ctx, "cassandraResourceCassandraKeyspace", &cosmosdb.CassandraResourceCassandraKeyspaceArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			KeyspaceName: pulumi.String("keyspaceName"),
/// 			Location:     pulumi.String("West US"),
/// 			Options:      &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.CassandraKeyspaceResourceArgs{
/// 				Id: pulumi.String("keyspaceName"),
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
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraKeyspace;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraKeyspaceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
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
///         var cassandraResourceCassandraKeyspace = new CassandraResourceCassandraKeyspace("cassandraResourceCassandraKeyspace", CassandraResourceCassandraKeyspaceArgs.builder()
///             .accountName("ddb1")
///             .keyspaceName("keyspaceName")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(CassandraKeyspaceResourceArgs.builder()
///                 .id("keyspaceName")
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
/// const cassandraResourceCassandraKeyspace = new azure_native.cosmosdb.CassandraResourceCassandraKeyspace("cassandraResourceCassandraKeyspace", {
///     accountName: "ddb1",
///     keyspaceName: "keyspaceName",
///     location: "West US",
///     options: {},
///     resource: {
///         id: "keyspaceName",
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
/// cassandra_resource_cassandra_keyspace = azure_native.cosmosdb.CassandraResourceCassandraKeyspace("cassandraResourceCassandraKeyspace",
///     account_name="ddb1",
///     keyspace_name="keyspaceName",
///     location="West US",
///     options={},
///     resource={
///         "id": "keyspaceName",
///     },
///     resource_group_name="rg1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraResourceCassandraKeyspace:
///     type: azure-native:cosmosdb:CassandraResourceCassandraKeyspace
///     properties:
///       accountName: ddb1
///       keyspaceName: keyspaceName
///       location: West US
///       options: {}
///       resource:
///         id: keyspaceName
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
/// $ pulumi import azure-native:cosmosdb:CassandraResourceCassandraKeyspace keyspaceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/cassandraKeyspaces/{keyspaceName}
/// ```
class CassandraResourceCassandraKeyspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<CassandraKeyspaceGetPropertiesResponseOptions?> options;
  late final pulumi.Output<CassandraKeyspaceGetPropertiesResponseResource?> resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraResourceCassandraKeyspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraResourceCassandraKeyspace]. {@macro pulumi_cosmosdb_cassandra_resource_cassandra_keyspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraResourceCassandraKeyspace(
    String name, {
    CassandraResourceCassandraKeyspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:CassandraResourceCassandraKeyspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<CassandraKeyspaceGetPropertiesResponseOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraKeyspaceGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<CassandraKeyspaceGetPropertiesResponseResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraKeyspaceGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
