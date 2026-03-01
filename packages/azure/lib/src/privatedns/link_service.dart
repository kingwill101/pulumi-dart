import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_service_args.dart';
import 'link_service_nat_ip_configuration.dart';

/// Manages a Private Link Service.
///
/// > **Note:** Private Link is now in [GA](https://docs.microsoft.com/en-gb/azure/private-link/).
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
///     name: "example-network",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.5.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.1.0/24"],
///     enforcePrivateLinkServiceNetworkPolicies: true,
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-api",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "example-lb",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: examplePublicIp.name,
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleLinkService = new azure.privatedns.LinkService("example", {
///     name: "example-privatelink",
///     resourceGroupName: example.name,
///     location: example.location,
///     autoApprovalSubscriptionIds: ["00000000-0000-0000-0000-000000000000"],
///     visibilitySubscriptionIds: ["00000000-0000-0000-0000-000000000000"],
///     loadBalancerFrontendIpConfigurationIds: [exampleLoadBalancer.frontendIpConfigurations.apply(frontendIpConfigurations => frontendIpConfigurations?.[0]?.id)],
///     natIpConfigurations: [
///         {
///             name: "primary",
///             privateIpAddress: "10.5.1.17",
///             privateIpAddressVersion: "IPv4",
///             subnetId: exampleSubnet.id,
///             primary: true,
///         },
///         {
///             name: "secondary",
///             privateIpAddress: "10.5.1.18",
///             privateIpAddressVersion: "IPv4",
///             subnetId: exampleSubnet.id,
///             primary: false,
///         },
///     ],
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
///     name="example-network",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.5.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.1.0/24"],
///     enforce_private_link_service_network_policies=True)
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-api",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="example-lb",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": example_public_ip.name,
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_link_service = azure.privatedns.LinkService("example",
///     name="example-privatelink",
///     resource_group_name=example.name,
///     location=example.location,
///     auto_approval_subscription_ids=["00000000-0000-0000-0000-000000000000"],
///     visibility_subscription_ids=["00000000-0000-0000-0000-000000000000"],
///     load_balancer_frontend_ip_configuration_ids=[example_load_balancer.frontend_ip_configurations[0].id],
///     nat_ip_configurations=[
///         {
///             "name": "primary",
///             "private_ip_address": "10.5.1.17",
///             "private_ip_address_version": "IPv4",
///             "subnet_id": example_subnet.id,
///             "primary": True,
///         },
///         {
///             "name": "secondary",
///             "private_ip_address": "10.5.1.18",
///             "private_ip_address_version": "IPv4",
///             "subnet_id": example_subnet.id,
///             "primary": False,
///         },
///     ])
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
///         Name = "example-network",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.1.0/24",
///         },
///         EnforcePrivateLinkServiceNetworkPolicies = true,
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-api",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "example-lb",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = examplePublicIp.Name,
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleLinkService = new Azure.PrivateDns.LinkService("example", new()
///     {
///         Name = "example-privatelink",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AutoApprovalSubscriptionIds = new[]
///         {
///             "00000000-0000-0000-0000-000000000000",
///         },
///         VisibilitySubscriptionIds = new[]
///         {
///             "00000000-0000-0000-0000-000000000000",
///         },
///         LoadBalancerFrontendIpConfigurationIds = new[]
///         {
///             exampleLoadBalancer.FrontendIpConfigurations.Apply(frontendIpConfigurations => frontendIpConfigurations[0]?.Id),
///         },
///         NatIpConfigurations = new[]
///         {
///             new Azure.PrivateDns.Inputs.LinkServiceNatIpConfigurationArgs
///             {
///                 Name = "primary",
///                 PrivateIpAddress = "10.5.1.17",
///                 PrivateIpAddressVersion = "IPv4",
///                 SubnetId = exampleSubnet.Id,
///                 Primary = true,
///             },
///             new Azure.PrivateDns.Inputs.LinkServiceNatIpConfigurationArgs
///             {
///                 Name = "secondary",
///                 PrivateIpAddress = "10.5.1.18",
///                 PrivateIpAddressVersion = "IPv4",
///                 SubnetId = exampleSubnet.Id,
///                 Primary = false,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 			Name:              pulumi.String("example-network"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.5.1.0/24"),
/// 			},
/// 			EnforcePrivateLinkServiceNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-api"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("example-lb"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              examplePublicIp.Name,
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewLinkService(ctx, "example", &privatedns.LinkServiceArgs{
/// 			Name:              pulumi.String("example-privatelink"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AutoApprovalSubscriptionIds: pulumi.StringArray{
/// 				pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			VisibilitySubscriptionIds: pulumi.StringArray{
/// 				pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			LoadBalancerFrontendIpConfigurationIds: pulumi.StringArray{
/// 				pulumi.String(exampleLoadBalancer.FrontendIpConfigurations.ApplyT(func(frontendIpConfigurations []lb.LoadBalancerFrontendIpConfiguration) (*string, error) {
/// 					return &frontendIpConfigurations[0].Id, nil
/// 				}).(pulumi.StringPtrOutput)),
/// 			},
/// 			NatIpConfigurations: privatedns.LinkServiceNatIpConfigurationArray{
/// 				&privatedns.LinkServiceNatIpConfigurationArgs{
/// 					Name:                    pulumi.String("primary"),
/// 					PrivateIpAddress:        pulumi.String("10.5.1.17"),
/// 					PrivateIpAddressVersion: pulumi.String("IPv4"),
/// 					SubnetId:                exampleSubnet.ID(),
/// 					Primary:                 pulumi.Bool(true),
/// 				},
/// 				&privatedns.LinkServiceNatIpConfigurationArgs{
/// 					Name:                    pulumi.String("secondary"),
/// 					PrivateIpAddress:        pulumi.String("10.5.1.18"),
/// 					PrivateIpAddressVersion: pulumi.String("IPv4"),
/// 					SubnetId:                exampleSubnet.ID(),
/// 					Primary:                 pulumi.Bool(false),
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
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.privatedns.LinkService;
/// import com.pulumi.azure.privatedns.LinkServiceArgs;
/// import com.pulumi.azure.privatedns.inputs.LinkServiceNatIpConfigurationArgs;
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
///             .name("example-network")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.5.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.1.0/24")
///             .enforcePrivateLinkServiceNetworkPolicies(true)
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-api")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("example-lb")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name(examplePublicIp.name())
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleLinkService = new LinkService("exampleLinkService", LinkServiceArgs.builder()
///             .name("example-privatelink")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .autoApprovalSubscriptionIds("00000000-0000-0000-0000-000000000000")
///             .visibilitySubscriptionIds("00000000-0000-0000-0000-000000000000")
///             .loadBalancerFrontendIpConfigurationIds(exampleLoadBalancer.frontendIpConfigurations().applyValue(_frontendIpConfigurations -> _frontendIpConfigurations[0].id()))
///             .natIpConfigurations(
///                 LinkServiceNatIpConfigurationArgs.builder()
///                     .name("primary")
///                     .privateIpAddress("10.5.1.17")
///                     .privateIpAddressVersion("IPv4")
///                     .subnetId(exampleSubnet.id())
///                     .primary(true)
///                     .build(),
///                 LinkServiceNatIpConfigurationArgs.builder()
///                     .name("secondary")
///                     .privateIpAddress("10.5.1.18")
///                     .privateIpAddressVersion("IPv4")
///                     .subnetId(exampleSubnet.id())
///                     .primary(false)
///                     .build())
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
///       name: example-network
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.5.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.1.0/24
///       enforcePrivateLinkServiceNetworkPolicies: true
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-api
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: example-lb
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: ${examplePublicIp.name}
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleLinkService:
///     type: azure:privatedns:LinkService
///     name: example
///     properties:
///       name: example-privatelink
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       autoApprovalSubscriptionIds:
///         - 00000000-0000-0000-0000-000000000000
///       visibilitySubscriptionIds:
///         - 00000000-0000-0000-0000-000000000000
///       loadBalancerFrontendIpConfigurationIds:
///         - ${exampleLoadBalancer.frontendIpConfigurations[0].id}
///       natIpConfigurations:
///         - name: primary
///           privateIpAddress: 10.5.1.17
///           privateIpAddressVersion: IPv4
///           subnetId: ${exampleSubnet.id}
///           primary: true
///         - name: secondary
///           privateIpAddress: 10.5.1.18
///           privateIpAddressVersion: IPv4
///           subnetId: ${exampleSubnet.id}
///           primary: false
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
/// Private Link Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/linkService:LinkService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/privateLinkServices/service1
/// ```
class LinkService extends pulumi.CustomResource {
  /// A globally unique DNS Name for your Private Link Service. You can use this alias to request a connection to your Private Link Service.
  late final pulumi.Output<String> alias;
  /// A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service.
  late final pulumi.Output<List<String>?> autoApprovalSubscriptionIds;
  /// The destination IP address of the Private Link Service.
  late final pulumi.Output<String?> destinationIpAddress;
  /// Should the Private Link Service support the Proxy Protocol?
  late final pulumi.Output<bool?> enableProxyProtocol;
  /// List of FQDNs allowed for the Private Link Service.
  late final pulumi.Output<List<String>?> fqdns;
  /// A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> loadBalancerFrontendIpConfigurationIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Private Link Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more (up to 8) `nat_ip_configuration` block as defined below.
  late final pulumi.Output<List<LinkServiceNatIpConfiguration>> natIpConfigurations;
  /// The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of Subscription UUID/GUID's that will be able to see this Private Link Service.
  ///
  /// > **Note:** If no Subscription IDs are specified then Azure allows every Subscription to see this Private Link Service.
  late final pulumi.Output<List<String>?> visibilitySubscriptionIds;

  /// Creates a new [LinkService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkService]. {@macro pulumi_privatedns_link_service_link_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkService(
    String name, {
    LinkServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/linkService:LinkService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.autoApprovalSubscriptionIds = registerOutput<List<String>?>('autoApprovalSubscriptionIds');
    this.destinationIpAddress = registerOutput<String?>('destinationIpAddress');
    this.enableProxyProtocol = registerOutput<bool?>('enableProxyProtocol');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.loadBalancerFrontendIpConfigurationIds = registerOutput<List<String>?>('loadBalancerFrontendIpConfigurationIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.natIpConfigurations = registerOutput<List<LinkServiceNatIpConfiguration>>('natIpConfigurations');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.visibilitySubscriptionIds = registerOutput<List<String>?>('visibilitySubscriptionIds');
  }
}
