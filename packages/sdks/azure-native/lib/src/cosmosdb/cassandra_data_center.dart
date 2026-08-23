import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_data_center_args.dart';
import 'data_center_resource_response_properties.dart';

/// A managed Cassandra data center.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-03-01-preview, 2021-04-01-preview, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBManagedCassandraDataCenterCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandraDataCenter = new AzureNative.CosmosDB.CassandraDataCenter("cassandraDataCenter", new()
///     {
///         ClusterName = "cassandra-prod",
///         DataCenterName = "dc1",
///         Properties = new AzureNative.CosmosDB.Inputs.DataCenterResourcePropertiesArgs
///         {
///             Base64EncodedCassandraYamlFragment = "Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA=",
///             DataCenterLocation = "West US 2",
///             DelegatedSubnetId = "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet",
///             NodeCount = 9,
///         },
///         ResourceGroupName = "cassandra-prod-rg",
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
/// 		_, err := cosmosdb.NewCassandraDataCenter(ctx, "cassandraDataCenter", &cosmosdb.CassandraDataCenterArgs{
/// 			ClusterName:    pulumi.String("cassandra-prod"),
/// 			DataCenterName: pulumi.String("dc1"),
/// 			Properties: &cosmosdb.DataCenterResourcePropertiesArgs{
/// 				Base64EncodedCassandraYamlFragment: pulumi.String("Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA="),
/// 				DataCenterLocation:                 pulumi.String("West US 2"),
/// 				DelegatedSubnetId:                  pulumi.String("/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet"),
/// 				NodeCount:                          pulumi.Int(9),
/// 			},
/// 			ResourceGroupName: pulumi.String("cassandra-prod-rg"),
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
/// resource "azure-native_cosmosdb_cassandradatacenter" "cassandraDataCenter" {
///   cluster_name     = "cassandra-prod"
///   data_center_name = "dc1"
///   properties = {
///     base64_encoded_cassandra_yaml_fragment = "Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA="
///     data_center_location                   = "West US 2"
///     delegated_subnet_id                    = "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet"
///     node_count                             = 9
///   }
///   resource_group_name = "cassandra-prod-rg"
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
/// import com.pulumi.azurenative.cosmosdb.CassandraDataCenter;
/// import com.pulumi.azurenative.cosmosdb.CassandraDataCenterArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.DataCenterResourcePropertiesArgs;
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
///         var cassandraDataCenter = new CassandraDataCenter("cassandraDataCenter", CassandraDataCenterArgs.builder()
///             .clusterName("cassandra-prod")
///             .dataCenterName("dc1")
///             .properties(DataCenterResourcePropertiesArgs.builder()
///                 .base64EncodedCassandraYamlFragment("Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA=")
///                 .dataCenterLocation("West US 2")
///                 .delegatedSubnetId("/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet")
///                 .nodeCount(9)
///                 .build())
///             .resourceGroupName("cassandra-prod-rg")
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
/// const cassandraDataCenter = new azure_native.cosmosdb.CassandraDataCenter("cassandraDataCenter", {
///     clusterName: "cassandra-prod",
///     dataCenterName: "dc1",
///     properties: {
///         base64EncodedCassandraYamlFragment: "Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA=",
///         dataCenterLocation: "West US 2",
///         delegatedSubnetId: "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet",
///         nodeCount: 9,
///     },
///     resourceGroupName: "cassandra-prod-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cassandra_data_center = azure_native.cosmosdb.CassandraDataCenter("cassandraDataCenter",
///     cluster_name="cassandra-prod",
///     data_center_name="dc1",
///     properties={
///         "base64_encoded_cassandra_yaml_fragment": "Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA=",
///         "data_center_location": "West US 2",
///         "delegated_subnet_id": "/subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet",
///         "node_count": 9,
///     },
///     resource_group_name="cassandra-prod-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraDataCenter:
///     type: azure-native:cosmosdb:CassandraDataCenter
///     properties:
///       clusterName: cassandra-prod
///       dataCenterName: dc1
///       properties:
///         base64EncodedCassandraYamlFragment: Y29tcGFjdGlvbl90aHJvdWdocHV0X21iX3Blcl9zZWM6IDMyCmNvbXBhY3Rpb25fbGFyZ2VfcGFydGl0aW9uX3dhcm5pbmdfdGhyZXNob2xkX21iOiAxMDA=
///         dataCenterLocation: West US 2
///         delegatedSubnetId: /subscriptions/536e130b-d7d6-4ac7-98a5-de20d69588d2/resourceGroups/customer-vnet-rg/providers/Microsoft.Network/virtualNetworks/customer-vnet/subnets/dc1-subnet
///         nodeCount: 9
///       resourceGroupName: cassandra-prod-rg
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
/// $ pulumi import azure-native:cosmosdb:CassandraDataCenter dc1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/cassandraClusters/{clusterName}/dataCenters/{dataCenterName}
/// ```
class CassandraDataCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// Properties of a managed Cassandra data center.
  late final pulumi.Output<DataCenterResourceResponseProperties> properties;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraDataCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraDataCenter]. {@macro pulumi_cosmosdb_cassandra_data_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraDataCenter(
    String name, {
    CassandraDataCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:CassandraDataCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataCenterResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCenterResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
