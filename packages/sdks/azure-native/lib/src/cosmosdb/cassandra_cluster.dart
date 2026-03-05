import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_cluster_args.dart';
import 'cluster_resource_response_properties.dart';
import 'managed_cassandra_managed_service_identity_response.dart';

/// Representation of a managed Cassandra cluster.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBManagedCassandraClusterCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandraCluster = new AzureNative.CosmosDB.CassandraCluster("cassandraCluster", new()
///     {
///         ClusterName = "cassandra-prod",
///         Location = "West US",
///         Properties = null,
///         ResourceGroupName = "cassandra-prod-rg",
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
/// 		_, err := cosmosdb.NewCassandraCluster(ctx, "cassandraCluster", &cosmosdb.CassandraClusterArgs{
/// 			ClusterName:       pulumi.String("cassandra-prod"),
/// 			Location:          pulumi.String("West US"),
/// 			Properties:        &cosmosdb.ClusterResourcePropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("cassandra-prod-rg"),
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
/// import com.pulumi.azurenative.cosmosdb.CassandraCluster;
/// import com.pulumi.azurenative.cosmosdb.CassandraClusterArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ClusterResourcePropertiesArgs;
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
///         var cassandraCluster = new CassandraCluster("cassandraCluster", CassandraClusterArgs.builder()
///             .clusterName("cassandra-prod")
///             .location("West US")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("cassandra-prod-rg")
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
/// const cassandraCluster = new azure_native.cosmosdb.CassandraCluster("cassandraCluster", {
///     clusterName: "cassandra-prod",
///     location: "West US",
///     properties: {},
///     resourceGroupName: "cassandra-prod-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cassandra_cluster = azure_native.cosmosdb.CassandraCluster("cassandraCluster",
///     cluster_name="cassandra-prod",
///     location="West US",
///     properties={},
///     resource_group_name="cassandra-prod-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraCluster:
///     type: azure-native:cosmosdb:CassandraCluster
///     properties:
///       clusterName: cassandra-prod
///       location: West US
///       properties: {}
///       resourceGroupName: cassandra-prod-rg
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
/// $ pulumi import azure-native:cosmosdb:CassandraCluster cassandra-prod /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/cassandraClusters/{clusterName}
/// ```
class CassandraCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identity for the resource.
  late final pulumi.Output<ManagedCassandraManagedServiceIdentityResponse?> identity;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  /// Properties of a managed Cassandra cluster.
  late final pulumi.Output<ClusterResourceResponseProperties> properties;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraCluster]. {@macro pulumi_cosmosdb_cassandra_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraCluster(
    String name, {
    CassandraClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:CassandraCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedCassandraManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedCassandraManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ClusterResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
