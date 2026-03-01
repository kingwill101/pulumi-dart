import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_nat_rule_args.dart';
import 'virtual_network_gateway_nat_rule_external_mapping.dart';
import 'virtual_network_gateway_nat_rule_internal_mapping.dart';

/// Manages a Virtual Network Gateway Nat Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "GatewaySubnet",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     allocationMethod: "Dynamic",
/// });
/// const exampleVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("example", {
///     name: "example-vnetgw",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     type: "Vpn",
///     vpnType: "RouteBased",
///     sku: "Basic",
///     ipConfigurations: [{
///         publicIpAddressId: examplePublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: exampleSubnet.id,
///     }],
/// });
/// const example = azure.network.getVirtualNetworkGatewayOutput({
///     name: exampleVirtualNetworkGateway.name,
///     resourceGroupName: exampleVirtualNetworkGateway.resourceGroupName,
/// });
/// const exampleVirtualNetworkGatewayNatRule = new azure.network.VirtualNetworkGatewayNatRule("example", {
///     name: "example-vnetgwnatrule",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkGatewayId: example.apply(example => example.id),
///     mode: "EgressSnat",
///     type: "Dynamic",
///     ipConfigurationId: example.apply(example => example.ipConfigurations?.[0]?.id),
///     externalMappings: [{
///         addressSpace: "10.2.0.0/26",
///         portRange: "200",
///     }],
///     internalMappings: [{
///         addressSpace: "10.4.0.0/26",
///         portRange: "400",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="GatewaySubnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     allocation_method="Dynamic")
/// example_virtual_network_gateway = azure.network.VirtualNetworkGateway("example",
///     name="example-vnetgw",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     type="Vpn",
///     vpn_type="RouteBased",
///     sku="Basic",
///     ip_configurations=[{
///         "public_ip_address_id": example_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": example_subnet.id,
///     }])
/// example = azure.network.get_virtual_network_gateway_output(name=example_virtual_network_gateway.name,
///     resource_group_name=example_virtual_network_gateway.resource_group_name)
/// example_virtual_network_gateway_nat_rule = azure.network.VirtualNetworkGatewayNatRule("example",
///     name="example-vnetgwnatrule",
///     resource_group_name=example_resource_group.name,
///     virtual_network_gateway_id=example.id,
///     mode="EgressSnat",
///     type="Dynamic",
///     ip_configuration_id=example.ip_configurations[0].id,
///     external_mappings=[{
///         "address_space": "10.2.0.0/26",
///         "port_range": "200",
///     }],
///     internal_mappings=[{
///         "address_space": "10.4.0.0/26",
///         "port_range": "400",
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AllocationMethod = "Dynamic",
///     });
///
///     var exampleVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("example", new()
///     {
///         Name = "example-vnetgw",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Type = "Vpn",
///         VpnType = "RouteBased",
///         Sku = "Basic",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 PublicIpAddressId = examplePublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///     });
///
///     var example = Azure.Network.GetVirtualNetworkGateway.Invoke(new()
///     {
///         Name = exampleVirtualNetworkGateway.Name,
///         ResourceGroupName = exampleVirtualNetworkGateway.ResourceGroupName,
///     });
///
///     var exampleVirtualNetworkGatewayNatRule = new Azure.Network.VirtualNetworkGatewayNatRule("example", new()
///     {
///         Name = "example-vnetgwnatrule",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkGatewayId = example.Apply(getVirtualNetworkGatewayResult => getVirtualNetworkGatewayResult.Id),
///         Mode = "EgressSnat",
///         Type = "Dynamic",
///         IpConfigurationId = example.Apply(getVirtualNetworkGatewayResult => getVirtualNetworkGatewayResult.IpConfigurations[0]?.Id),
///         ExternalMappings = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayNatRuleExternalMappingArgs
///             {
///                 AddressSpace = "10.2.0.0/26",
///                 PortRange = "200",
///             },
///         },
///         InternalMappings = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayNatRuleInternalMappingArgs
///             {
///                 AddressSpace = "10.4.0.0/26",
///                 PortRange = "400",
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
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "example", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("example-vnetgw"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Type:              pulumi.String("Vpn"),
/// 			VpnType:           pulumi.String("RouteBased"),
/// 			Sku:               pulumi.String("Basic"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					PublicIpAddressId:          examplePublicIp.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := network.LookupVirtualNetworkGatewayOutput(ctx, network.GetVirtualNetworkGatewayOutputArgs{
/// 			Name:              exampleVirtualNetworkGateway.Name,
/// 			ResourceGroupName: exampleVirtualNetworkGateway.ResourceGroupName,
/// 		}, nil)
/// 		_, err = network.NewVirtualNetworkGatewayNatRule(ctx, "example", &network.VirtualNetworkGatewayNatRuleArgs{
/// 			Name:              pulumi.String("example-vnetgwnatrule"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			VirtualNetworkGatewayId: pulumi.String(example.ApplyT(func(example network.GetVirtualNetworkGatewayResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Mode: pulumi.String("EgressSnat"),
/// 			Type: pulumi.String("Dynamic"),
/// 			IpConfigurationId: pulumi.String(example.ApplyT(func(example network.GetVirtualNetworkGatewayResult) (*string, error) {
/// 				return &example.IpConfigurations[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ExternalMappings: network.VirtualNetworkGatewayNatRuleExternalMappingArray{
/// 				&network.VirtualNetworkGatewayNatRuleExternalMappingArgs{
/// 					AddressSpace: pulumi.String("10.2.0.0/26"),
/// 					PortRange:    pulumi.String("200"),
/// 				},
/// 			},
/// 			InternalMappings: network.VirtualNetworkGatewayNatRuleInternalMappingArray{
/// 				&network.VirtualNetworkGatewayNatRuleInternalMappingArgs{
/// 					AddressSpace: pulumi.String("10.4.0.0/26"),
/// 					PortRange:    pulumi.String("400"),
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
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.VirtualNetworkGatewayNatRule;
/// import com.pulumi.azure.network.VirtualNetworkGatewayNatRuleArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayNatRuleExternalMappingArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayNatRuleInternalMappingArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .allocationMethod("Dynamic")
///             .build());
///
///         var exampleVirtualNetworkGateway = new VirtualNetworkGateway("exampleVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("example-vnetgw")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .type("Vpn")
///             .vpnType("RouteBased")
///             .sku("Basic")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .publicIpAddressId(examplePublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .build());
///
///         final var example = NetworkFunctions.getVirtualNetworkGateway(GetVirtualNetworkGatewayArgs.builder()
///             .name(exampleVirtualNetworkGateway.name())
///             .resourceGroupName(exampleVirtualNetworkGateway.resourceGroupName())
///             .build());
///
///         var exampleVirtualNetworkGatewayNatRule = new VirtualNetworkGatewayNatRule("exampleVirtualNetworkGatewayNatRule", VirtualNetworkGatewayNatRuleArgs.builder()
///             .name("example-vnetgwnatrule")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkGatewayId(example.applyValue(_example -> _example.id()))
///             .mode("EgressSnat")
///             .type("Dynamic")
///             .ipConfigurationId(example.applyValue(_example -> _example.ipConfigurations()[0].id()))
///             .externalMappings(VirtualNetworkGatewayNatRuleExternalMappingArgs.builder()
///                 .addressSpace("10.2.0.0/26")
///                 .portRange("200")
///                 .build())
///             .internalMappings(VirtualNetworkGatewayNatRuleInternalMappingArgs.builder()
///                 .addressSpace("10.4.0.0/26")
///                 .portRange("400")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       allocationMethod: Dynamic
///   exampleVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: example
///     properties:
///       name: example-vnetgw
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       type: Vpn
///       vpnType: RouteBased
///       sku: Basic
///       ipConfigurations:
///         - publicIpAddressId: ${examplePublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${exampleSubnet.id}
///   exampleVirtualNetworkGatewayNatRule:
///     type: azure:network:VirtualNetworkGatewayNatRule
///     name: example
///     properties:
///       name: example-vnetgwnatrule
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkGatewayId: ${example.id}
///       mode: EgressSnat
///       type: Dynamic
///       ipConfigurationId: ${example.ipConfigurations[0].id}
///       externalMappings:
///         - addressSpace: 10.2.0.0/26
///           portRange: '200'
///       internalMappings:
///         - addressSpace: 10.4.0.0/26
///           portRange: '400'
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetworkGateway
///       arguments:
///         name: ${exampleVirtualNetworkGateway.name}
///         resourceGroupName: ${exampleVirtualNetworkGateway.resourceGroupName}
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
/// Virtual Network Gateway Nat Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetworkGatewayNatRule:VirtualNetworkGatewayNatRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Network/virtualNetworkGateways/gw1/natRules/rule1
/// ```
class VirtualNetworkGatewayNatRule extends pulumi.CustomResource {
  /// One or more `external_mapping` blocks as documented below.
  late final pulumi.Output<List<VirtualNetworkGatewayNatRuleExternalMapping>> externalMappings;
  /// One or more `internal_mapping` blocks as documented below.
  late final pulumi.Output<List<VirtualNetworkGatewayNatRuleInternalMapping>> internalMappings;
  /// The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to.
  late final pulumi.Output<String?> ipConfigurationId;
  /// The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> mode;
  /// The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> type;
  /// The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayNatRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkGatewayNatRule]. {@macro pulumi_network_virtual_network_gateway_nat_rule_virtual_network_gateway_nat_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkGatewayNatRule(
    String name, {
    VirtualNetworkGatewayNatRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkGatewayNatRule:VirtualNetworkGatewayNatRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.externalMappings = registerOutput<List<VirtualNetworkGatewayNatRuleExternalMapping>>('externalMappings');
    this.internalMappings = registerOutput<List<VirtualNetworkGatewayNatRuleInternalMapping>>('internalMappings');
    this.ipConfigurationId = registerOutput<String?>('ipConfigurationId');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.type = registerOutput<String?>('type');
    this.virtualNetworkGatewayId = registerOutput<String>('virtualNetworkGatewayId');
  }
}
