import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';

/// Manages a Load Balancer Rule.
///
/// > **Note:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "LoadBalancerRG",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "PublicIPForLB",
///     location: "West US",
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "TestLoadBalancer",
///     location: "West US",
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleRule = new azure.lb.Rule("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "LBRule",
///     protocol: "Tcp",
///     frontendPort: 3389,
///     backendPort: 3389,
///     frontendIpConfigurationName: "PublicIPAddress",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="LoadBalancerRG",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="PublicIPForLB",
///     location="West US",
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="TestLoadBalancer",
///     location="West US",
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_rule = azure.lb.Rule("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="LBRule",
///     protocol="Tcp",
///     frontend_port=3389,
///     backend_port=3389,
///     frontend_ip_configuration_name="PublicIPAddress")
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
///         Name = "LoadBalancerRG",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "PublicIPForLB",
///         Location = "West US",
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "TestLoadBalancer",
///         Location = "West US",
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = "PublicIPAddress",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleRule = new Azure.Lb.Rule("example", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "LBRule",
///         Protocol = "Tcp",
///         FrontendPort = 3389,
///         BackendPort = 3389,
///         FrontendIpConfigurationName = "PublicIPAddress",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("LoadBalancerRG"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("PublicIPForLB"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("TestLoadBalancer"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String("PublicIPAddress"),
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewRule(ctx, "example", &lb.RuleArgs{
/// 			LoadbalancerId:              exampleLoadBalancer.ID(),
/// 			Name:                        pulumi.String("LBRule"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPort:                pulumi.Int(3389),
/// 			BackendPort:                 pulumi.Int(3389),
/// 			FrontendIpConfigurationName: pulumi.String("PublicIPAddress"),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.Rule;
/// import com.pulumi.azure.lb.RuleArgs;
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
///             .name("LoadBalancerRG")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("PublicIPForLB")
///             .location("West US")
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("TestLoadBalancer")
///             .location("West US")
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleRule = new Rule("exampleRule", RuleArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("LBRule")
///             .protocol("Tcp")
///             .frontendPort(3389)
///             .backendPort(3389)
///             .frontendIpConfigurationName("PublicIPAddress")
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
///       name: LoadBalancerRG
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: PublicIPForLB
///       location: West US
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: TestLoadBalancer
///       location: West US
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleRule:
///     type: azure:lb:Rule
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: LBRule
///       protocol: Tcp
///       frontendPort: 3389
///       backendPort: 3389
///       frontendIpConfigurationName: PublicIPAddress
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
///
/// ## Import
///
/// Load Balancer Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/rule:Rule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/loadBalancingRules/rule1
/// ```
class Rule extends pulumi.CustomResource {
  /// A list of reference to a Backend Address Pool over which this Load Balancing Rule operates.
  ///
  /// > **Note:** In most cases users can only set one Backend Address Pool ID in the `backend_address_pool_ids`. Especially, when the sku of the LB is `Gateway`, users can set up to two IDs in the `backend_address_pool_ids`.
  late final pulumi.Output<List<String>?> backendAddressPoolIds;
  /// The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive. A port of `0` means "Any Port".
  late final pulumi.Output<int> backendPort;
  /// Is snat enabled for this Load Balancer Rule? Default `false`.
  late final pulumi.Output<bool?> disableOutboundSnat;
  late final pulumi.Output<bool> enableFloatingIp;
  late final pulumi.Output<bool> enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  late final pulumi.Output<bool> floatingIpEnabled;
  late final pulumi.Output<String> frontendIpConfigurationId;
  /// The name of the frontend IP configuration to which the rule is associated.
  late final pulumi.Output<String> frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive. A port of `0` means "Any Port".
  late final pulumi.Output<int> frontendPort;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `100` minutes. Defaults to `4` minutes.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are `Default`, `SourceIP` and `SourceIPProtocol`. Defaults to `Default.`
  /// * `Default` – The load balancer is configured to use a 5 tuple hash to map traffic to available servers.
  /// * `SourceIP` – The load balancer is configured to use a 2 tuple hash to map traffic to available servers.
  /// * `SourceIPProtocol` – The load balancer is configured to use a 3 tuple hash to map traffic to available servers.
  ///
  /// > **Note:** In the portal, this is known as Session Persistence where the options are `None`, `Client IP` and `Client IP and Protocol` respectively.
  late final pulumi.Output<String?> loadDistribution;
  /// The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the LB Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A reference to a Probe used by this Load Balancing Rule.
  late final pulumi.Output<String?> probeId;
  /// The transport protocol for the external endpoint. Possible values are `Tcp`, `Udp` or `All`.
  late final pulumi.Output<String> protocol;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  late final pulumi.Output<bool> tcpResetEnabled;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_lb_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendAddressPoolIds = registerOutput<List<String>?>('backendAddressPoolIds');
    this.backendPort = registerOutput<int>('backendPort');
    this.disableOutboundSnat = registerOutput<bool?>('disableOutboundSnat');
    this.enableFloatingIp = registerOutput<bool>('enableFloatingIp');
    this.enableTcpReset = registerOutput<bool>('enableTcpReset');
    this.floatingIpEnabled = registerOutput<bool>('floatingIpEnabled');
    this.frontendIpConfigurationId = registerOutput<String>('frontendIpConfigurationId');
    this.frontendIpConfigurationName = registerOutput<String>('frontendIpConfigurationName');
    this.frontendPort = registerOutput<int>('frontendPort');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.loadDistribution = registerOutput<String?>('loadDistribution');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.probeId = registerOutput<String?>('probeId');
    this.protocol = registerOutput<String>('protocol');
    this.tcpResetEnabled = registerOutput<bool>('tcpResetEnabled');
  }
}
