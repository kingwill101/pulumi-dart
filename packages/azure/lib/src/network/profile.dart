import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'profile_container_network_interface.dart';

/// Manages a Network Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "examplegroup",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevnet",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.1.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "examplesubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.0.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "Microsoft.ContainerInstance/containerGroups",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }],
/// });
/// const exampleProfile = new azure.network.Profile("example", {
///     name: "examplenetprofile",
///     location: example.location,
///     resourceGroupName: example.name,
///     containerNetworkInterface: {
///         name: "examplecnic",
///         ipConfigurations: [{
///             name: "exampleipconfig",
///             subnetId: exampleSubnet.id,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="examplegroup",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.1.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="examplesubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.0.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "Microsoft.ContainerInstance/containerGroups",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }])
/// example_profile = azure.network.Profile("example",
///     name="examplenetprofile",
///     location=example.location,
///     resource_group_name=example.name,
///     container_network_interface={
///         "name": "examplecnic",
///         "ip_configurations": [{
///             "name": "exampleipconfig",
///             "subnet_id": example_subnet.id,
///         }],
///     })
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
///         Name = "examplegroup",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "examplesubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.0.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.ContainerInstance/containerGroups",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleProfile = new Azure.Network.Profile("example", new()
///     {
///         Name = "examplenetprofile",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ContainerNetworkInterface = new Azure.Network.Inputs.ProfileContainerNetworkInterfaceArgs
///         {
///             Name = "examplecnic",
///             IpConfigurations = new[]
///             {
///                 new Azure.Network.Inputs.ProfileContainerNetworkInterfaceIpConfigurationArgs
///                 {
///                     Name = "exampleipconfig",
///                     SubnetId = exampleSubnet.Id,
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
/// 			Name:     pulumi.String("examplegroup"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("examplevnet"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.ContainerInstance/containerGroups"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewProfile(ctx, "example", &network.ProfileArgs{
/// 			Name:              pulumi.String("examplenetprofile"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ContainerNetworkInterface: &network.ProfileContainerNetworkInterfaceArgs{
/// 				Name: pulumi.String("examplecnic"),
/// 				IpConfigurations: network.ProfileContainerNetworkInterfaceIpConfigurationArray{
/// 					&network.ProfileContainerNetworkInterfaceIpConfigurationArgs{
/// 						Name:     pulumi.String("exampleipconfig"),
/// 						SubnetId: exampleSubnet.ID(),
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
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.Profile;
/// import com.pulumi.azure.network.ProfileArgs;
/// import com.pulumi.azure.network.inputs.ProfileContainerNetworkInterfaceArgs;
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
///             .name("examplegroup")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevnet")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.1.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("examplesubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.0.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.ContainerInstance/containerGroups")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleProfile = new Profile("exampleProfile", ProfileArgs.builder()
///             .name("examplenetprofile")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .containerNetworkInterface(ProfileContainerNetworkInterfaceArgs.builder()
///                 .name("examplecnic")
///                 .ipConfigurations(ProfileContainerNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("exampleipconfig")
///                     .subnetId(exampleSubnet.id())
///                     .build())
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
///       name: examplegroup
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.1.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: examplesubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.0.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: Microsoft.ContainerInstance/containerGroups
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/action
///   exampleProfile:
///     type: azure:network:Profile
///     name: example
///     properties:
///       name: examplenetprofile
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       containerNetworkInterface:
///         name: examplecnic
///         ipConfigurations:
///           - name: exampleipconfig
///             subnetId: ${exampleSubnet.id}
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
/// Network Profile can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/profile:Profile example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/networkProfiles/examplenetprofile
/// ```
class Profile extends pulumi.CustomResource {
  /// A `container_network_interface` block as documented below.
  late final pulumi.Output<ProfileContainerNetworkInterface> containerNetworkInterface;
  /// A list of Container Network Interface IDs.
  late final pulumi.Output<List<String>> containerNetworkInterfaceIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_network_profile_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerNetworkInterface = registerOutput<ProfileContainerNetworkInterface>('containerNetworkInterface');
    this.containerNetworkInterfaceIds = registerOutput<List<String>>('containerNetworkInterfaceIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
