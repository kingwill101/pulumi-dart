import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_ip_args.dart';

/// Manages a Virtual Hub IP. This resource is also known as a Route Server.
///
/// > **Note:** Virtual Hub IP only supports Standard Virtual Hub without Virtual Wan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.5.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "RouteServerSubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.1.0/24"],
/// });
/// const exampleVirtualHubIp = new azure.network.VirtualHubIp("example", {
///     name: "example-vhubipconfig",
///     virtualHubId: exampleVirtualHub.id,
///     privateIpAddress: "10.5.1.18",
///     privateIpAllocationMethod: "Static",
///     publicIpAddressId: examplePublicIp.id,
///     subnetId: exampleSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="Standard")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.5.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="RouteServerSubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.1.0/24"])
/// example_virtual_hub_ip = azure.network.VirtualHubIp("example",
///     name="example-vhubipconfig",
///     virtual_hub_id=example_virtual_hub.id,
///     private_ip_address="10.5.1.18",
///     private_ip_allocation_method="Static",
///     public_ip_address_id=example_public_ip.id,
///     subnet_id=example_subnet.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "RouteServerSubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.1.0/24",
///         },
///     });
///
///     var exampleVirtualHubIp = new Azure.Network.VirtualHubIp("example", new()
///     {
///         Name = "example-vhubipconfig",
///         VirtualHubId = exampleVirtualHub.Id,
///         PrivateIpAddress = "10.5.1.18",
///         PrivateIpAllocationMethod = "Static",
///         PublicIpAddressId = examplePublicIp.Id,
///         SubnetId = exampleSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("RouteServerSubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.5.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualHubIp(ctx, "example", &network.VirtualHubIpArgs{
/// 			Name:                      pulumi.String("example-vhubipconfig"),
/// 			VirtualHubId:              exampleVirtualHub.ID(),
/// 			PrivateIpAddress:          pulumi.String("10.5.1.18"),
/// 			PrivateIpAllocationMethod: pulumi.String("Static"),
/// 			PublicIpAddressId:         examplePublicIp.ID(),
/// 			SubnetId:                  exampleSubnet.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.VirtualHubIp;
/// import com.pulumi.azure.network.VirtualHubIpArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.5.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("RouteServerSubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.1.0/24")
///             .build());
///
///         var exampleVirtualHubIp = new VirtualHubIp("exampleVirtualHubIp", VirtualHubIpArgs.builder()
///             .name("example-vhubipconfig")
///             .virtualHubId(exampleVirtualHub.id())
///             .privateIpAddress("10.5.1.18")
///             .privateIpAllocationMethod("Static")
///             .publicIpAddressId(examplePublicIp.id())
///             .subnetId(exampleSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: Standard
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.5.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: RouteServerSubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.1.0/24
///   exampleVirtualHubIp:
///     type: azure:network:VirtualHubIp
///     name: example
///     properties:
///       name: example-vhubipconfig
///       virtualHubId: ${exampleVirtualHub.id}
///       privateIpAddress: 10.5.1.18
///       privateIpAllocationMethod: Static
///       publicIpAddressId: ${examplePublicIp.id}
///       subnetId: ${exampleSubnet.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Virtual Hub IPs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualHubIp:VirtualHubIp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/virtualHub1/ipConfigurations/ipConfig1
/// ```
class VirtualHubIp extends pulumi.CustomResource {
  /// The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The private IP address of the IP configuration.
  late final pulumi.Output<String?> privateIpAddress;
  /// The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`.
  late final pulumi.Output<String?> privateIpAllocationMethod;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  late final pulumi.Output<String> publicIpAddressId;
  /// The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [VirtualHubIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubIp]. {@macro pulumi_network_virtual_hub_ip_virtual_hub_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubIp(
    String name, {
    VirtualHubIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubIp:VirtualHubIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.privateIpAddress = registerOutput<String?>('privateIpAddress');
    this.privateIpAllocationMethod = registerOutput<String?>('privateIpAllocationMethod');
    this.publicIpAddressId = registerOutput<String>('publicIpAddressId');
    this.subnetId = registerOutput<String>('subnetId');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }
}
