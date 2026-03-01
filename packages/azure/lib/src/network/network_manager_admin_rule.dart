import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_admin_rule_args.dart';
import 'network_manager_admin_rule_destination.dart';
import 'network_manager_admin_rule_source.dart';

/// Manages a Network Manager Admin Rule.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-network-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerSecurityAdminConfiguration = new azure.network.NetworkManagerSecurityAdminConfiguration("example", {
///     name: "example-admin-conf",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerAdminRuleCollection = new azure.network.NetworkManagerAdminRuleCollection("example", {
///     name: "example-admin-rule-collection",
///     securityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.id,
///     networkGroupIds: [exampleNetworkManagerNetworkGroup.id],
/// });
/// const exampleNetworkManagerAdminRule = new azure.network.NetworkManagerAdminRule("example", {
///     name: "example-admin-rule",
///     adminRuleCollectionId: exampleNetworkManagerAdminRuleCollection.id,
///     action: "Deny",
///     direction: "Outbound",
///     priority: 1,
///     protocol: "Tcp",
///     sourcePortRanges: [
///         "80",
///         "1024-65535",
///     ],
///     destinationPortRanges: ["80"],
///     sources: [{
///         addressPrefixType: "ServiceTag",
///         addressPrefix: "Internet",
///     }],
///     destinations: [
///         {
///             addressPrefixType: "IPPrefix",
///             addressPrefix: "10.1.0.1",
///         },
///         {
///             addressPrefixType: "IPPrefix",
///             addressPrefix: "10.0.0.0/24",
///         },
///     ],
///     description: "example admin rule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-network-group",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_security_admin_configuration = azure.network.NetworkManagerSecurityAdminConfiguration("example",
///     name="example-admin-conf",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_admin_rule_collection = azure.network.NetworkManagerAdminRuleCollection("example",
///     name="example-admin-rule-collection",
///     security_admin_configuration_id=example_network_manager_security_admin_configuration.id,
///     network_group_ids=[example_network_manager_network_group.id])
/// example_network_manager_admin_rule = azure.network.NetworkManagerAdminRule("example",
///     name="example-admin-rule",
///     admin_rule_collection_id=example_network_manager_admin_rule_collection.id,
///     action="Deny",
///     direction="Outbound",
///     priority=1,
///     protocol="Tcp",
///     source_port_ranges=[
///         "80",
///         "1024-65535",
///     ],
///     destination_port_ranges=["80"],
///     sources=[{
///         "address_prefix_type": "ServiceTag",
///         "address_prefix": "Internet",
///     }],
///     destinations=[
///         {
///             "address_prefix_type": "IPPrefix",
///             "address_prefix": "10.1.0.1",
///         },
///         {
///             "address_prefix_type": "IPPrefix",
///             "address_prefix": "10.0.0.0/24",
///         },
///     ],
///     description="example admin rule")
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-network-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerSecurityAdminConfiguration = new Azure.Network.NetworkManagerSecurityAdminConfiguration("example", new()
///     {
///         Name = "example-admin-conf",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerAdminRuleCollection = new Azure.Network.NetworkManagerAdminRuleCollection("example", new()
///     {
///         Name = "example-admin-rule-collection",
///         SecurityAdminConfigurationId = exampleNetworkManagerSecurityAdminConfiguration.Id,
///         NetworkGroupIds = new[]
///         {
///             exampleNetworkManagerNetworkGroup.Id,
///         },
///     });
///
///     var exampleNetworkManagerAdminRule = new Azure.Network.NetworkManagerAdminRule("example", new()
///     {
///         Name = "example-admin-rule",
///         AdminRuleCollectionId = exampleNetworkManagerAdminRuleCollection.Id,
///         Action = "Deny",
///         Direction = "Outbound",
///         Priority = 1,
///         Protocol = "Tcp",
///         SourcePortRanges = new[]
///         {
///             "80",
///             "1024-65535",
///         },
///         DestinationPortRanges = new[]
///         {
///             "80",
///         },
///         Sources = new[]
///         {
///             new Azure.Network.Inputs.NetworkManagerAdminRuleSourceArgs
///             {
///                 AddressPrefixType = "ServiceTag",
///                 AddressPrefix = "Internet",
///             },
///         },
///         Destinations = new[]
///         {
///             new Azure.Network.Inputs.NetworkManagerAdminRuleDestinationArgs
///             {
///                 AddressPrefixType = "IPPrefix",
///                 AddressPrefix = "10.1.0.1",
///             },
///             new Azure.Network.Inputs.NetworkManagerAdminRuleDestinationArgs
///             {
///                 AddressPrefixType = "IPPrefix",
///                 AddressPrefix = "10.0.0.0/24",
///             },
///         },
///         Description = "example admin rule",
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-network-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerSecurityAdminConfiguration, err := network.NewNetworkManagerSecurityAdminConfiguration(ctx, "example", &network.NetworkManagerSecurityAdminConfigurationArgs{
/// 			Name:             pulumi.String("example-admin-conf"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerAdminRuleCollection, err := network.NewNetworkManagerAdminRuleCollection(ctx, "example", &network.NetworkManagerAdminRuleCollectionArgs{
/// 			Name:                         pulumi.String("example-admin-rule-collection"),
/// 			SecurityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.ID(),
/// 			NetworkGroupIds: pulumi.StringArray{
/// 				exampleNetworkManagerNetworkGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerAdminRule(ctx, "example", &network.NetworkManagerAdminRuleArgs{
/// 			Name:                  pulumi.String("example-admin-rule"),
/// 			AdminRuleCollectionId: exampleNetworkManagerAdminRuleCollection.ID(),
/// 			Action:                pulumi.String("Deny"),
/// 			Direction:             pulumi.String("Outbound"),
/// 			Priority:              pulumi.Int(1),
/// 			Protocol:              pulumi.String("Tcp"),
/// 			SourcePortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 				pulumi.String("1024-65535"),
/// 			},
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Sources: network.NetworkManagerAdminRuleSourceArray{
/// 				&network.NetworkManagerAdminRuleSourceArgs{
/// 					AddressPrefixType: pulumi.String("ServiceTag"),
/// 					AddressPrefix:     pulumi.String("Internet"),
/// 				},
/// 			},
/// 			Destinations: network.NetworkManagerAdminRuleDestinationArray{
/// 				&network.NetworkManagerAdminRuleDestinationArgs{
/// 					AddressPrefixType: pulumi.String("IPPrefix"),
/// 					AddressPrefix:     pulumi.String("10.1.0.1"),
/// 				},
/// 				&network.NetworkManagerAdminRuleDestinationArgs{
/// 					AddressPrefixType: pulumi.String("IPPrefix"),
/// 					AddressPrefix:     pulumi.String("10.0.0.0/24"),
/// 				},
/// 			},
/// 			Description: pulumi.String("example admin rule"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfiguration;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfigurationArgs;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollection;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollectionArgs;
/// import com.pulumi.azure.network.NetworkManagerAdminRule;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerAdminRuleSourceArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerAdminRuleDestinationArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-network-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerSecurityAdminConfiguration = new NetworkManagerSecurityAdminConfiguration("exampleNetworkManagerSecurityAdminConfiguration", NetworkManagerSecurityAdminConfigurationArgs.builder()
///             .name("example-admin-conf")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerAdminRuleCollection = new NetworkManagerAdminRuleCollection("exampleNetworkManagerAdminRuleCollection", NetworkManagerAdminRuleCollectionArgs.builder()
///             .name("example-admin-rule-collection")
///             .securityAdminConfigurationId(exampleNetworkManagerSecurityAdminConfiguration.id())
///             .networkGroupIds(exampleNetworkManagerNetworkGroup.id())
///             .build());
///
///         var exampleNetworkManagerAdminRule = new NetworkManagerAdminRule("exampleNetworkManagerAdminRule", NetworkManagerAdminRuleArgs.builder()
///             .name("example-admin-rule")
///             .adminRuleCollectionId(exampleNetworkManagerAdminRuleCollection.id())
///             .action("Deny")
///             .direction("Outbound")
///             .priority(1)
///             .protocol("Tcp")
///             .sourcePortRanges(
///                 "80",
///                 "1024-65535")
///             .destinationPortRanges("80")
///             .sources(NetworkManagerAdminRuleSourceArgs.builder()
///                 .addressPrefixType("ServiceTag")
///                 .addressPrefix("Internet")
///                 .build())
///             .destinations(
///                 NetworkManagerAdminRuleDestinationArgs.builder()
///                     .addressPrefixType("IPPrefix")
///                     .addressPrefix("10.1.0.1")
///                     .build(),
///                 NetworkManagerAdminRuleDestinationArgs.builder()
///                     .addressPrefixType("IPPrefix")
///                     .addressPrefix("10.0.0.0/24")
///                     .build())
///             .description("example admin rule")
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
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-network-group
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerSecurityAdminConfiguration:
///     type: azure:network:NetworkManagerSecurityAdminConfiguration
///     name: example
///     properties:
///       name: example-admin-conf
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerAdminRuleCollection:
///     type: azure:network:NetworkManagerAdminRuleCollection
///     name: example
///     properties:
///       name: example-admin-rule-collection
///       securityAdminConfigurationId: ${exampleNetworkManagerSecurityAdminConfiguration.id}
///       networkGroupIds:
///         - ${exampleNetworkManagerNetworkGroup.id}
///   exampleNetworkManagerAdminRule:
///     type: azure:network:NetworkManagerAdminRule
///     name: example
///     properties:
///       name: example-admin-rule
///       adminRuleCollectionId: ${exampleNetworkManagerAdminRuleCollection.id}
///       action: Deny
///       direction: Outbound
///       priority: 1
///       protocol: Tcp
///       sourcePortRanges:
///         - '80'
///         - 1024-65535
///       destinationPortRanges:
///         - '80'
///       sources:
///         - addressPrefixType: ServiceTag
///           addressPrefix: Internet
///       destinations:
///         - addressPrefixType: IPPrefix
///           addressPrefix: 10.1.0.1
///         - addressPrefixType: IPPrefix
///           addressPrefix: 10.0.0.0/24
///       description: example admin rule
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
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
/// Network Manager Admin Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerAdminRule:NetworkManagerAdminRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/securityAdminConfigurations/configuration1/ruleCollections/ruleCollection1/rules/rule1
/// ```
class NetworkManagerAdminRule extends pulumi.CustomResource {
  /// Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`.
  late final pulumi.Output<String> action;
  /// Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created.
  late final pulumi.Output<String> adminRuleCollectionId;
  /// A description of the Network Manager Admin Rule.
  late final pulumi.Output<String?> description;
  /// A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  late final pulumi.Output<List<String>?> destinationPortRanges;
  /// One or more `destination` blocks as defined below.
  late final pulumi.Output<List<NetworkManagerAdminRuleDestination>?> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`.
  late final pulumi.Output<String> direction;
  /// Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created.
  late final pulumi.Output<String> name;
  /// The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;
  /// Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`.
  late final pulumi.Output<String> protocol;
  /// A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  late final pulumi.Output<List<String>?> sourcePortRanges;
  /// One or more `source` blocks as defined below.
  late final pulumi.Output<List<NetworkManagerAdminRuleSource>?> sources;

  /// Creates a new [NetworkManagerAdminRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerAdminRule]. {@macro pulumi_network_network_manager_admin_rule_network_manager_admin_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerAdminRule(
    String name, {
    NetworkManagerAdminRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerAdminRule:NetworkManagerAdminRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.adminRuleCollectionId = registerOutput<String>('adminRuleCollectionId');
    this.description = registerOutput<String?>('description');
    this.destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges');
    this.destinations = registerOutput<List<NetworkManagerAdminRuleDestination>?>('destinations');
    this.direction = registerOutput<String>('direction');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.protocol = registerOutput<String>('protocol');
    this.sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges');
    this.sources = registerOutput<List<NetworkManagerAdminRuleSource>?>('sources');
  }
}
