import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_network_rule_collection_args.dart';
import 'firewall_network_rule_collection_rule.dart';

/// Manages a Network Rule Collection within an Azure Firewall.
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
/// const exampleFirewallNetworkRuleCollection = new azure.network.FirewallNetworkRuleCollection("example", {
///     name: "testcollection",
///     azureFirewallName: exampleFirewall.name,
///     resourceGroupName: example.name,
///     priority: 100,
///     action: "Allow",
///     rules: [{
///         name: "testrule",
///         sourceAddresses: ["10.0.0.0/16"],
///         destinationPorts: ["53"],
///         destinationAddresses: [
///             "8.8.8.8",
///             "8.8.4.4",
///         ],
///         protocols: [
///             "TCP",
///             "UDP",
///         ],
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
/// example_firewall_network_rule_collection = azure.network.FirewallNetworkRuleCollection("example",
///     name="testcollection",
///     azure_firewall_name=example_firewall.name,
///     resource_group_name=example.name,
///     priority=100,
///     action="Allow",
///     rules=[{
///         "name": "testrule",
///         "source_addresses": ["10.0.0.0/16"],
///         "destination_ports": ["53"],
///         "destination_addresses": [
///             "8.8.8.8",
///             "8.8.4.4",
///         ],
///         "protocols": [
///             "TCP",
///             "UDP",
///         ],
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
///     var exampleFirewallNetworkRuleCollection = new Azure.Network.FirewallNetworkRuleCollection("example", new()
///     {
///         Name = "testcollection",
///         AzureFirewallName = exampleFirewall.Name,
///         ResourceGroupName = example.Name,
///         Priority = 100,
///         Action = "Allow",
///         Rules = new[]
///         {
///             new Azure.Network.Inputs.FirewallNetworkRuleCollectionRuleArgs
///             {
///                 Name = "testrule",
///                 SourceAddresses = new[]
///                 {
///                     "10.0.0.0/16",
///                 },
///                 DestinationPorts = new[]
///                 {
///                     "53",
///                 },
///                 DestinationAddresses = new[]
///                 {
///                     "8.8.8.8",
///                     "8.8.4.4",
///                 },
///                 Protocols = new[]
///                 {
///                     "TCP",
///                     "UDP",
///                 },
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
/// 		exampleFirewall, err := network.NewFirewall(ctx, "example", &network.FirewallArgs{
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
/// 		_, err = network.NewFirewallNetworkRuleCollection(ctx, "example", &network.FirewallNetworkRuleCollectionArgs{
/// 			Name:              pulumi.String("testcollection"),
/// 			AzureFirewallName: exampleFirewall.Name,
/// 			ResourceGroupName: example.Name,
/// 			Priority:          pulumi.Int(100),
/// 			Action:            pulumi.String("Allow"),
/// 			Rules: network.FirewallNetworkRuleCollectionRuleArray{
/// 				&network.FirewallNetworkRuleCollectionRuleArgs{
/// 					Name: pulumi.String("testrule"),
/// 					SourceAddresses: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/16"),
/// 					},
/// 					DestinationPorts: pulumi.StringArray{
/// 						pulumi.String("53"),
/// 					},
/// 					DestinationAddresses: pulumi.StringArray{
/// 						pulumi.String("8.8.8.8"),
/// 						pulumi.String("8.8.4.4"),
/// 					},
/// 					Protocols: pulumi.StringArray{
/// 						pulumi.String("TCP"),
/// 						pulumi.String("UDP"),
/// 					},
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
/// import com.pulumi.azure.network.FirewallNetworkRuleCollection;
/// import com.pulumi.azure.network.FirewallNetworkRuleCollectionArgs;
/// import com.pulumi.azure.network.inputs.FirewallNetworkRuleCollectionRuleArgs;
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
///         var exampleFirewallNetworkRuleCollection = new FirewallNetworkRuleCollection("exampleFirewallNetworkRuleCollection", FirewallNetworkRuleCollectionArgs.builder()
///             .name("testcollection")
///             .azureFirewallName(exampleFirewall.name())
///             .resourceGroupName(example.name())
///             .priority(100)
///             .action("Allow")
///             .rules(FirewallNetworkRuleCollectionRuleArgs.builder()
///                 .name("testrule")
///                 .sourceAddresses("10.0.0.0/16")
///                 .destinationPorts("53")
///                 .destinationAddresses(
///                     "8.8.8.8",
///                     "8.8.4.4")
///                 .protocols(
///                     "TCP",
///                     "UDP")
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
///   exampleFirewallNetworkRuleCollection:
///     type: azure:network:FirewallNetworkRuleCollection
///     name: example
///     properties:
///       name: testcollection
///       azureFirewallName: ${exampleFirewall.name}
///       resourceGroupName: ${example.name}
///       priority: 100
///       action: Allow
///       rules:
///         - name: testrule
///           sourceAddresses:
///             - 10.0.0.0/16
///           destinationPorts:
///             - '53'
///           destinationAddresses:
///             - 8.8.8.8
///             - 8.8.4.4
///           protocols:
///             - TCP
///             - UDP
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
/// Azure Firewall Network Rule Collections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/firewallNetworkRuleCollection:FirewallNetworkRuleCollection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/azureFirewalls/myfirewall/networkRuleCollections/mycollection
/// ```
class FirewallNetworkRuleCollection extends pulumi.CustomResource {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  late final pulumi.Output<String> action;
  /// Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> azureFirewallName;
  /// Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  late final pulumi.Output<int> priority;
  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `rule` blocks as defined below.
  late final pulumi.Output<List<FirewallNetworkRuleCollectionRule>> rules;

  /// Creates a new [FirewallNetworkRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallNetworkRuleCollection]. {@macro pulumi_network_firewall_network_rule_collection_firewall_network_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallNetworkRuleCollection(
    String name, {
    FirewallNetworkRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewallNetworkRuleCollection:FirewallNetworkRuleCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.azureFirewallName = registerOutput<String>('azureFirewallName');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.rules = registerOutput<List<FirewallNetworkRuleCollectionRule>>('rules');
  }
}
