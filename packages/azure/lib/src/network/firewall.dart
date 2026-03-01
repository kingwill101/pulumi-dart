import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_args.dart';
import 'firewall_ip_configuration.dart';
import 'firewall_management_ip_configuration.dart';
import 'firewall_virtual_hub.dart';

/// Manages an Azure Firewall.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "testvnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "AzureFirewallSubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "testpip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleFirewall = new azure.network.Firewall("example", {
///     name: "testfirewall",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "AZFW_VNet",
///     skuTier: "Standard",
///     ipConfigurations: [{
///         name: "configuration",
///         subnetId: exampleSubnet.id,
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="testvnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="AzureFirewallSubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="testpip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="Standard")
/// example_firewall = azure.network.Firewall("example",
///     name="testfirewall",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="AZFW_VNet",
///     sku_tier="Standard",
///     ip_configurations=[{
///         "name": "configuration",
///         "subnet_id": example_subnet.id,
///         "public_ip_address_id": example_public_ip.id,
///     }])
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "testvnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "AzureFirewallSubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "testpip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleFirewall = new Azure.Network.Firewall("example", new()
///     {
///         Name = "testfirewall",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "AZFW_VNet",
///         SkuTier = "Standard",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.FirewallIpConfigurationArgs
///             {
///                 Name = "configuration",
///                 SubnetId = exampleSubnet.Id,
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("testvnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("AzureFirewallSubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("testpip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewFirewall(ctx, "example", &network.FirewallArgs{
/// 			Name:              pulumi.String("testfirewall"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("AZFW_VNet"),
/// 			SkuTier:           pulumi.String("Standard"),
/// 			IpConfigurations: network.FirewallIpConfigurationArray{
/// 				&network.FirewallIpConfigurationArgs{
/// 					Name:              pulumi.String("configuration"),
/// 					SubnetId:          exampleSubnet.ID(),
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.Firewall;
/// import com.pulumi.azure.network.FirewallArgs;
/// import com.pulumi.azure.network.inputs.FirewallIpConfigurationArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("testvnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("AzureFirewallSubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("testpip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleFirewall = new Firewall("exampleFirewall", FirewallArgs.builder()
///             .name("testfirewall")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("AZFW_VNet")
///             .skuTier("Standard")
///             .ipConfigurations(FirewallIpConfigurationArgs.builder()
///                 .name("configuration")
///                 .subnetId(exampleSubnet.id())
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: testvnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: AzureFirewallSubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: testpip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: Standard
///   exampleFirewall:
///     type: azure:network:Firewall
///     name: example
///     properties:
///       name: testfirewall
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: AZFW_VNet
///       skuTier: Standard
///       ipConfigurations:
///         - name: configuration
///           subnetId: ${exampleSubnet.id}
///           publicIpAddressId: ${examplePublicIp.id}
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
/// Azure Firewalls can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/firewall:Firewall example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/azureFirewalls/testfirewall
/// ```
class Firewall extends pulumi.CustomResource {
  /// Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when set to `true`. It will be set to `true` if `dns_servers` provided with a not empty list.
  late final pulumi.Output<bool> dnsProxyEnabled;
  /// A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution.
  late final pulumi.Output<List<String>?> dnsServers;
  /// The ID of the Firewall Policy applied to this Firewall.
  late final pulumi.Output<String?> firewallPolicyId;
  /// An `ip_configuration` block as documented below.
  late final pulumi.Output<List<FirewallIpConfiguration>?> ipConfigurations;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `management_ip_configuration` block as documented below, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the `subnet_id` in an existing block forces a new resource to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<FirewallManagementIpConfiguration?> managementIpConfiguration;
  /// Specifies the name of the Firewall. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of SNAT private CIDR IP ranges, or the special string `IANAPrivateRanges`, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918.
  late final pulumi.Output<List<String>?> privateIpRanges;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuName;
  /// SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`.
  late final pulumi.Output<String> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The operation mode for threat intelligence-based filtering. Possible values are: `Off`, `Alert` and `Deny`. Defaults to `Alert`.
  late final pulumi.Output<String> threatIntelMode;
  /// A `virtual_hub` block as documented below.
  late final pulumi.Output<FirewallVirtualHub?> virtualHub;
  /// Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created.
  ///
  /// > **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_network_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dnsProxyEnabled = registerOutput<bool>('dnsProxyEnabled');
    this.dnsServers = registerOutput<List<String>?>('dnsServers');
    this.firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    this.ipConfigurations = registerOutput<List<FirewallIpConfiguration>?>('ipConfigurations');
    this.location = registerOutput<String>('location');
    this.managementIpConfiguration = registerOutput<FirewallManagementIpConfiguration?>('managementIpConfiguration');
    this.name = registerOutput<String>('name');
    this.privateIpRanges = registerOutput<List<String>?>('privateIpRanges');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.skuTier = registerOutput<String>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.threatIntelMode = registerOutput<String>('threatIntelMode');
    this.virtualHub = registerOutput<FirewallVirtualHub?>('virtualHub');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
