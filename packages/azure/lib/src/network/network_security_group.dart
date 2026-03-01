import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_args.dart';
import 'network_security_group_security_rule.dart';

/// Manages a network security group that contains a list of network security rules.  Network security groups enable inbound or outbound traffic to be enabled or denied.
///
/// > **NOTE on Network Security Groups and Network Security Rules:** This provider currently
/// provides both a standalone Network Security Rule resource, and allows for Network Security Rules to be defined in-line within the Network Security Group resource.
/// At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.
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
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "acceptanceTestSecurityGroup1",
///     location: example.location,
///     resourceGroupName: example.name,
///     securityRules: [{
///         name: "test123",
///         priority: 100,
///         direction: "Inbound",
///         access: "Allow",
///         protocol: "Tcp",
///         sourcePortRange: "*",
///         destinationPortRange: "*",
///         sourceAddressPrefix: "*",
///         destinationAddressPrefix: "*",
///     }],
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="acceptanceTestSecurityGroup1",
///     location=example.location,
///     resource_group_name=example.name,
///     security_rules=[{
///         "name": "test123",
///         "priority": 100,
///         "direction": "Inbound",
///         "access": "Allow",
///         "protocol": "Tcp",
///         "source_port_range": "*",
///         "destination_port_range": "*",
///         "source_address_prefix": "*",
///         "destination_address_prefix": "*",
///     }],
///     tags={
///         "environment": "Production",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "acceptanceTestSecurityGroup1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SecurityRules = new[]
///         {
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "test123",
///                 Priority = 100,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "*",
///                 SourceAddressPrefix = "*",
///                 DestinationAddressPrefix = "*",
///             },
///         },
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 		_, err = network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("acceptanceTestSecurityGroup1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SecurityRules: network.NetworkSecurityGroupSecurityRuleArray{
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("test123"),
/// 					Priority:                 pulumi.Int(100),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("*"),
/// 					SourceAddressPrefix:      pulumi.String("*"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.inputs.NetworkSecurityGroupSecurityRuleArgs;
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
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("acceptanceTestSecurityGroup1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .securityRules(NetworkSecurityGroupSecurityRuleArgs.builder()
///                 .name("test123")
///                 .priority(100)
///                 .direction("Inbound")
///                 .access("Allow")
///                 .protocol("Tcp")
///                 .sourcePortRange("*")
///                 .destinationPortRange("*")
///                 .sourceAddressPrefix("*")
///                 .destinationAddressPrefix("*")
///                 .build())
///             .tags(Map.of("environment", "Production"))
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
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: acceptanceTestSecurityGroup1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       securityRules:
///         - name: test123
///           priority: 100
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '*'
///           sourceAddressPrefix: '*'
///           destinationAddressPrefix: '*'
///       tags:
///         environment: Production
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
/// Network Security Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityGroup:NetworkSecurityGroup group1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkSecurityGroups/mySecurityGroup
/// ```
class NetworkSecurityGroup extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the security rule.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the network security group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A list of objects representing security rules, as defined below.
  ///
  /// > **NOTE** Since `security_rule` can be configured both inline and via the separate `azure.network.NetworkSecurityRule` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<NetworkSecurityGroupSecurityRule>> securityRules;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityGroup]. {@macro pulumi_network_network_security_group_network_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityGroup(
    String name, {
    NetworkSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityGroup:NetworkSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.securityRules = registerOutput<List<NetworkSecurityGroupSecurityRule>>('securityRules');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
