import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_response_properties_v1.dart';
import 'garnet_cluster_args.dart';
import 'system_data_response.dart';

/// Representation of a Garnet cache cluster.
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBGarnetClusterCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var garnetCluster = new AzureNative.CosmosDB.GarnetCluster("garnetCluster", new()
///     {
///         ClusterName = "garnet-prod",
///         Location = "West US",
///         Properties = new AzureNative.CosmosDB.Inputs.ClusterResourcePropertiesArgs
///         {
///             NodeCount = 4,
///             NodeSku = "Standard_DS13_v2",
///             ReplicationFactor = 2,
///             SubnetId = "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management",
///         },
///         ResourceGroupName = "garnet-prod-rg",
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
/// 		_, err := cosmosdb.NewGarnetCluster(ctx, "garnetCluster", &cosmosdb.GarnetClusterArgs{
/// 			ClusterName: pulumi.String("garnet-prod"),
/// 			Location:    pulumi.String("West US"),
/// 			Properties: &cosmosdb.ClusterResourcePropertiesArgs{
/// 				NodeCount:         pulumi.Int(4),
/// 				NodeSku:           pulumi.String("Standard_DS13_v2"),
/// 				ReplicationFactor: pulumi.Int(2),
/// 				SubnetId:          pulumi.String("/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management"),
/// 			},
/// 			ResourceGroupName: pulumi.String("garnet-prod-rg"),
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
/// import com.pulumi.azurenative.cosmosdb.GarnetCluster;
/// import com.pulumi.azurenative.cosmosdb.GarnetClusterArgs;
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
///         var garnetCluster = new GarnetCluster("garnetCluster", GarnetClusterArgs.builder()
///             .clusterName("garnet-prod")
///             .location("West US")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .nodeCount(4)
///                 .nodeSku("Standard_DS13_v2")
///                 .replicationFactor(2)
///                 .subnetId("/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management")
///                 .build())
///             .resourceGroupName("garnet-prod-rg")
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
/// const garnetCluster = new azure_native.cosmosdb.GarnetCluster("garnetCluster", {
///     clusterName: "garnet-prod",
///     location: "West US",
///     properties: {
///         nodeCount: 4,
///         nodeSku: "Standard_DS13_v2",
///         replicationFactor: 2,
///         subnetId: "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management",
///     },
///     resourceGroupName: "garnet-prod-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// garnet_cluster = azure_native.cosmosdb.GarnetCluster("garnetCluster",
///     cluster_name="garnet-prod",
///     location="West US",
///     properties={
///         "node_count": 4,
///         "node_sku": "Standard_DS13_v2",
///         "replication_factor": 2,
///         "subnet_id": "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management",
///     },
///     resource_group_name="garnet-prod-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   garnetCluster:
///     type: azure-native:cosmosdb:GarnetCluster
///     properties:
///       clusterName: garnet-prod
///       location: West US
///       properties:
///         nodeCount: 4
///         nodeSku: Standard_DS13_v2
///         replicationFactor: 2
///         subnetId: /subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/management
///       resourceGroupName: garnet-prod-rg
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
/// $ pulumi import azure-native:cosmosdb:GarnetCluster garnet-prod /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/garnetClusters/{clusterName}
/// ```
class GarnetCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of a Garnet cache cluster.
  late final pulumi.Output<ClusterResourceResponsePropertiesV1> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GarnetCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GarnetCluster]. {@macro pulumi_cosmosdb_garnet_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GarnetCluster(
    String name, {
    GarnetClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:GarnetCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ClusterResourceResponsePropertiesV1>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
