import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_args.dart';
import 'node_pool_properties_response.dart';
import 'system_data_response.dart';

/// NodePool tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NodePools_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodePool = new AzureNative.Discovery.NodePool("nodePool", new()
///     {
///         Location = "uksouth",
///         NodePoolName = "5a88c24ec4e7091650",
///         Properties = new AzureNative.Discovery.Inputs.NodePoolPropertiesArgs
///         {
///             MaxNodeCount = 4,
///             MinNodeCount = 0,
///             ScaleSetPriority = AzureNative.Discovery.ScaleSetPriority.Regular,
///             SubnetId = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1",
///             VmSize = AzureNative.Discovery.VmSize.Standard_NC24ads_A100_v4,
///         },
///         ResourceGroupName = "rgdiscovery",
///         SupercomputerName = "8074da5c77f95509a8",
///         Tags =
///         {
///             { "key6074", "qlnvwgazrqmwauqqvxntjtoye" },
///         },
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewNodePool(ctx, "nodePool", &discovery.NodePoolArgs{
/// 			Location:     pulumi.String("uksouth"),
/// 			NodePoolName: pulumi.String("5a88c24ec4e7091650"),
/// 			Properties: &discovery.NodePoolPropertiesArgs{
/// 				MaxNodeCount:     pulumi.Int(4),
/// 				MinNodeCount:     pulumi.Int(0),
/// 				ScaleSetPriority: pulumi.String(discovery.ScaleSetPriorityRegular),
/// 				SubnetId:         pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1"),
/// 				VmSize:           pulumi.String(discovery.VmSize_Standard_NC24ads_A100_v4),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			SupercomputerName: pulumi.String("8074da5c77f95509a8"),
/// 			Tags: pulumi.StringMap{
/// 				"key6074": pulumi.String("qlnvwgazrqmwauqqvxntjtoye"),
/// 			},
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
/// resource "azure-native_discovery_nodepool" "nodePool" {
///   location       = "uksouth"
///   node_pool_name = "5a88c24ec4e7091650"
///   properties = {
///     max_node_count     = 4
///     min_node_count     = 0
///     scale_set_priority = "Regular"
///     subnet_id          = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1"
///     vm_size            = "Standard_NC24ads_A100_v4"
///   }
///   resource_group_name = "rgdiscovery"
///   supercomputer_name  = "8074da5c77f95509a8"
///   tags = {
///     "key6074" = "qlnvwgazrqmwauqqvxntjtoye"
///   }
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
/// import com.pulumi.azurenative.discovery.NodePool;
/// import com.pulumi.azurenative.discovery.NodePoolArgs;
/// import com.pulumi.azurenative.discovery.inputs.NodePoolPropertiesArgs;
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
///         var nodePool = new NodePool("nodePool", NodePoolArgs.builder()
///             .location("uksouth")
///             .nodePoolName("5a88c24ec4e7091650")
///             .properties(NodePoolPropertiesArgs.builder()
///                 .maxNodeCount(4)
///                 .minNodeCount(0)
///                 .scaleSetPriority("Regular")
///                 .subnetId("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1")
///                 .vmSize("Standard_NC24ads_A100_v4")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .supercomputerName("8074da5c77f95509a8")
///             .tags(Map.of("key6074", "qlnvwgazrqmwauqqvxntjtoye"))
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
/// const nodePool = new azure_native.discovery.NodePool("nodePool", {
///     location: "uksouth",
///     nodePoolName: "5a88c24ec4e7091650",
///     properties: {
///         maxNodeCount: 4,
///         minNodeCount: 0,
///         scaleSetPriority: azure_native.discovery.ScaleSetPriority.Regular,
///         subnetId: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1",
///         vmSize: azure_native.discovery.VmSize.Standard_NC24ads_A100_v4,
///     },
///     resourceGroupName: "rgdiscovery",
///     supercomputerName: "8074da5c77f95509a8",
///     tags: {
///         key6074: "qlnvwgazrqmwauqqvxntjtoye",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_pool = azure_native.discovery.NodePool("nodePool",
///     location="uksouth",
///     node_pool_name="5a88c24ec4e7091650",
///     properties={
///         "max_node_count": 4,
///         "min_node_count": 0,
///         "scale_set_priority": azure_native.discovery.ScaleSetPriority.REGULAR,
///         "subnet_id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1",
///         "vm_size": azure_native.discovery.VmSize.STANDARD_NC24ADS_A100_V4,
///     },
///     resource_group_name="rgdiscovery",
///     supercomputer_name="8074da5c77f95509a8",
///     tags={
///         "key6074": "qlnvwgazrqmwauqqvxntjtoye",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   nodePool:
///     type: azure-native:discovery:NodePool
///     properties:
///       location: uksouth
///       nodePoolName: 5a88c24ec4e7091650
///       properties:
///         maxNodeCount: 4
///         minNodeCount: 0
///         scaleSetPriority: Regular
///         subnetId: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/subnet1
///         vmSize: Standard_NC24ads_A100_v4
///       resourceGroupName: rgdiscovery
///       supercomputerName: 8074da5c77f95509a8
///       tags:
///         key6074: qlnvwgazrqmwauqqvxntjtoye
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
/// $ pulumi import azure-native:discovery:NodePool 5a88c24ec4e7091650 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/supercomputers/{supercomputerName}/nodePools/{nodePoolName}
/// ```
class NodePool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<NodePoolPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodePool]. {@macro pulumi_discovery_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodePool(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:NodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NodePoolPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
