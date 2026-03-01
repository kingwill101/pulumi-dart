import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_management_group_connection_args.dart';

/// Manages a Network Manager Management Group Connection which may cross tenants.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.management.Group("example", {});
/// const alt = azure.core.getSubscription({
///     subscriptionId: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleGroupSubscriptionAssociation = new azure.management.GroupSubscriptionAssociation("example", {
///     managementGroupId: example.id,
///     subscriptionId: alt.then(alt => alt.id),
/// });
/// const current = azure.core.getSubscription({});
/// const currentGetClientConfig = azure.core.getClientConfig({});
/// const networkContributor = new azure.authorization.Assignment("network_contributor", {
///     scope: example.id,
///     roleDefinitionName: "Network Contributor",
///     principalId: currentGetClientConfig.then(currentGetClientConfig => currentGetClientConfig.objectId),
/// });
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-networkmanager",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: ["SecurityAdmin"],
/// });
/// const exampleNetworkManagerManagementGroupConnection = new azure.network.NetworkManagerManagementGroupConnection("example", {
///     name: "example-nmmgc",
///     managementGroupId: example.id,
///     networkManagerId: exampleNetworkManager.id,
///     description: "example",
/// }, {
///     dependsOn: [networkContributor],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.Group("example")
/// alt = azure.core.get_subscription(subscription_id="00000000-0000-0000-0000-000000000000")
/// example_group_subscription_association = azure.management.GroupSubscriptionAssociation("example",
///     management_group_id=example.id,
///     subscription_id=alt.id)
/// current = azure.core.get_subscription()
/// current_get_client_config = azure.core.get_client_config()
/// network_contributor = azure.authorization.Assignment("network_contributor",
///     scope=example.id,
///     role_definition_name="Network Contributor",
///     principal_id=current_get_client_config.object_id)
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-networkmanager",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=["SecurityAdmin"])
/// example_network_manager_management_group_connection = azure.network.NetworkManagerManagementGroupConnection("example",
///     name="example-nmmgc",
///     management_group_id=example.id,
///     network_manager_id=example_network_manager.id,
///     description="example",
///     opts = pulumi.ResourceOptions(depends_on=[network_contributor]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Management.Group("example");
///
///     var alt = Azure.Core.GetSubscription.Invoke(new()
///     {
///         SubscriptionId = "00000000-0000-0000-0000-000000000000",
///     });
///
///     var exampleGroupSubscriptionAssociation = new Azure.Management.GroupSubscriptionAssociation("example", new()
///     {
///         ManagementGroupId = example.Id,
///         SubscriptionId = alt.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///     });
///
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var currentGetClientConfig = Azure.Core.GetClientConfig.Invoke();
///
///     var networkContributor = new Azure.Authorization.Assignment("network_contributor", new()
///     {
///         Scope = example.Id,
///         RoleDefinitionName = "Network Contributor",
///         PrincipalId = currentGetClientConfig.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-networkmanager",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "SecurityAdmin",
///         },
///     });
///
///     var exampleNetworkManagerManagementGroupConnection = new Azure.Network.NetworkManagerManagementGroupConnection("example", new()
///     {
///         Name = "example-nmmgc",
///         ManagementGroupId = example.Id,
///         NetworkManagerId = exampleNetworkManager.Id,
///         Description = "example",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             networkContributor,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.NewGroup(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		alt, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{
/// 			SubscriptionId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupSubscriptionAssociation(ctx, "example", &management.GroupSubscriptionAssociationArgs{
/// 			ManagementGroupId: example.ID(),
/// 			SubscriptionId:    pulumi.String(alt.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetClientConfig, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		networkContributor, err := authorization.NewAssignment(ctx, "network_contributor", &authorization.AssignmentArgs{
/// 			Scope:              example.ID(),
/// 			RoleDefinitionName: pulumi.String("Network Contributor"),
/// 			PrincipalId:        pulumi.String(currentGetClientConfig.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-networkmanager"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerManagementGroupConnection(ctx, "example", &network.NetworkManagerManagementGroupConnectionArgs{
/// 			Name:              pulumi.String("example-nmmgc"),
/// 			ManagementGroupId: example.ID(),
/// 			NetworkManagerId:  exampleNetworkManager.ID(),
/// 			Description:       pulumi.String("example"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			networkContributor,
/// 		}))
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
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.GroupSubscriptionAssociation;
/// import com.pulumi.azure.management.GroupSubscriptionAssociationArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerManagementGroupConnection;
/// import com.pulumi.azure.network.NetworkManagerManagementGroupConnectionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Group("example");
///
///         final var alt = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .subscriptionId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         var exampleGroupSubscriptionAssociation = new GroupSubscriptionAssociation("exampleGroupSubscriptionAssociation", GroupSubscriptionAssociationArgs.builder()
///             .managementGroupId(example.id())
///             .subscriptionId(alt.id())
///             .build());
///
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var currentGetClientConfig = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var networkContributor = new Assignment("networkContributor", AssignmentArgs.builder()
///             .scope(example.id())
///             .roleDefinitionName("Network Contributor")
///             .principalId(currentGetClientConfig.objectId())
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-networkmanager")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses("SecurityAdmin")
///             .build());
///
///         var exampleNetworkManagerManagementGroupConnection = new NetworkManagerManagementGroupConnection("exampleNetworkManagerManagementGroupConnection", NetworkManagerManagementGroupConnectionArgs.builder()
///             .name("example-nmmgc")
///             .managementGroupId(example.id())
///             .networkManagerId(exampleNetworkManager.id())
///             .description("example")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(networkContributor)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:management:Group
///   exampleGroupSubscriptionAssociation:
///     type: azure:management:GroupSubscriptionAssociation
///     name: example
///     properties:
///       managementGroupId: ${example.id}
///       subscriptionId: ${alt.id}
///   networkContributor:
///     type: azure:authorization:Assignment
///     name: network_contributor
///     properties:
///       scope: ${example.id}
///       roleDefinitionName: Network Contributor
///       principalId: ${currentGetClientConfig.objectId}
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-networkmanager
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - SecurityAdmin
///   exampleNetworkManagerManagementGroupConnection:
///     type: azure:network:NetworkManagerManagementGroupConnection
///     name: example
///     properties:
///       name: example-nmmgc
///       managementGroupId: ${example.id}
///       networkManagerId: ${exampleNetworkManager.id}
///       description: example
///     options:
///       dependsOn:
///         - ${networkContributor}
/// variables:
///   alt:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments:
///         subscriptionId: 00000000-0000-0000-0000-000000000000
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   currentGetClientConfig:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2025-01-01
///
/// ## Import
///
/// Network Manager Management Group Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerManagementGroupConnection:NetworkManagerManagementGroupConnection example /providers/Microsoft.Management/managementGroups/00000000-0000-0000-0000-000000000000/providers/Microsoft.Network/networkManagerConnections/networkManagerConnection1
/// ```
class NetworkManagerManagementGroupConnection extends pulumi.CustomResource {
  /// The Connection state of the Network Manager Management Group Connection.
  late final pulumi.Output<String> connectionState;
  /// A description of the Network Manager Management Group Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the ID of the target Management Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementGroupId;
  /// Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkManagerId;

  /// Creates a new [NetworkManagerManagementGroupConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerManagementGroupConnection]. {@macro pulumi_network_network_manager_management_group_connection_network_manager_management_group_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerManagementGroupConnection(
    String name, {
    NetworkManagerManagementGroupConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerManagementGroupConnection:NetworkManagerManagementGroupConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionState = registerOutput<String>('connectionState');
    this.description = registerOutput<String?>('description');
    this.managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String>('networkManagerId');
  }
}
