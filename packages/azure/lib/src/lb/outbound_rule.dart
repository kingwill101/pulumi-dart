import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_rule_args.dart';
import 'outbound_rule_frontend_ip_configuration.dart';

/// Manages a Load Balancer Outbound Rule.
///
/// > **Note:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration and a Backend Address Pool Attached.
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
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "TestLoadBalancer",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleBackendAddressPool = new azure.lb.BackendAddressPool("example", {
///     name: "example",
///     loadbalancerId: exampleLoadBalancer.id,
/// });
/// const exampleOutboundRule = new azure.lb.OutboundRule("example", {
///     name: "OutboundRule",
///     loadbalancerId: exampleLoadBalancer.id,
///     protocol: "Tcp",
///     backendAddressPoolId: exampleBackendAddressPool.id,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///     }],
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
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="TestLoadBalancer",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_backend_address_pool = azure.lb.BackendAddressPool("example",
///     name="example",
///     loadbalancer_id=example_load_balancer.id)
/// example_outbound_rule = azure.lb.OutboundRule("example",
///     name="OutboundRule",
///     loadbalancer_id=example_load_balancer.id,
///     protocol="Tcp",
///     backend_address_pool_id=example_backend_address_pool.id,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
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
///         Name = "LoadBalancerRG",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "PublicIPForLB",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "TestLoadBalancer",
///         Location = example.Location,
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
///     var exampleBackendAddressPool = new Azure.Lb.BackendAddressPool("example", new()
///     {
///         Name = "example",
///         LoadbalancerId = exampleLoadBalancer.Id,
///     });
///
///     var exampleOutboundRule = new Azure.Lb.OutboundRule("example", new()
///     {
///         Name = "OutboundRule",
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Protocol = "Tcp",
///         BackendAddressPoolId = exampleBackendAddressPool.Id,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.OutboundRuleFrontendIpConfigurationArgs
///             {
///                 Name = "PublicIPAddress",
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
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("TestLoadBalancer"),
/// 			Location:          example.Location,
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
/// 		exampleBackendAddressPool, err := lb.NewBackendAddressPool(ctx, "example", &lb.BackendAddressPoolArgs{
/// 			Name:           pulumi.String("example"),
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewOutboundRule(ctx, "example", &lb.OutboundRuleArgs{
/// 			Name:                 pulumi.String("OutboundRule"),
/// 			LoadbalancerId:       exampleLoadBalancer.ID(),
/// 			Protocol:             pulumi.String("Tcp"),
/// 			BackendAddressPoolId: exampleBackendAddressPool.ID(),
/// 			FrontendIpConfigurations: lb.OutboundRuleFrontendIpConfigurationArray{
/// 				&lb.OutboundRuleFrontendIpConfigurationArgs{
/// 					Name: pulumi.String("PublicIPAddress"),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
/// import com.pulumi.azure.lb.OutboundRule;
/// import com.pulumi.azure.lb.OutboundRuleArgs;
/// import com.pulumi.azure.lb.inputs.OutboundRuleFrontendIpConfigurationArgs;
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
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("TestLoadBalancer")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleBackendAddressPool = new BackendAddressPool("exampleBackendAddressPool", BackendAddressPoolArgs.builder()
///             .name("example")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .build());
///
///         var exampleOutboundRule = new OutboundRule("exampleOutboundRule", OutboundRuleArgs.builder()
///             .name("OutboundRule")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .protocol("Tcp")
///             .backendAddressPoolId(exampleBackendAddressPool.id())
///             .frontendIpConfigurations(OutboundRuleFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
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
///       name: LoadBalancerRG
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: PublicIPForLB
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: TestLoadBalancer
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleBackendAddressPool:
///     type: azure:lb:BackendAddressPool
///     name: example
///     properties:
///       name: example
///       loadbalancerId: ${exampleLoadBalancer.id}
///   exampleOutboundRule:
///     type: azure:lb:OutboundRule
///     name: example
///     properties:
///       name: OutboundRule
///       loadbalancerId: ${exampleLoadBalancer.id}
///       protocol: Tcp
///       backendAddressPoolId: ${exampleBackendAddressPool.id}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
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
/// Load Balancer Outbound Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/outboundRule:OutboundRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/outboundRules/rule1
/// ```
class OutboundRule extends pulumi.CustomResource {
  /// The number of outbound ports to be used for NAT. Defaults to `1024`.
  late final pulumi.Output<int?> allocatedOutboundPorts;
  /// The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  late final pulumi.Output<String> backendAddressPoolId;
  late final pulumi.Output<bool> enableTcpReset;
  /// One or more `frontend_ip_configuration` blocks as defined below.
  late final pulumi.Output<List<OutboundRuleFrontendIpConfiguration>?> frontendIpConfigurations;
  /// The timeout for the TCP idle connection Defaults to `4`.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the Outbound Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  late final pulumi.Output<String> protocol;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  late final pulumi.Output<bool> tcpResetEnabled;

  /// Creates a new [OutboundRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundRule]. {@macro pulumi_lb_outbound_rule_outbound_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundRule(
    String name, {
    OutboundRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/outboundRule:OutboundRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatedOutboundPorts = registerOutput<int?>('allocatedOutboundPorts');
    this.backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    this.enableTcpReset = registerOutput<bool>('enableTcpReset');
    this.frontendIpConfigurations = registerOutput<List<OutboundRuleFrontendIpConfiguration>?>('frontendIpConfigurations');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.tcpResetEnabled = registerOutput<bool>('tcpResetEnabled');
  }
}
