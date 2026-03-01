import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_args.dart';

/// Manages a LoadBalancer Probe Resource.
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
/// const exampleProbe = new azure.lb.Probe("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "ssh-running-probe",
///     port: 22,
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
/// example_probe = azure.lb.Probe("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="ssh-running-probe",
///     port=22)
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
///     var exampleProbe = new Azure.Lb.Probe("example", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "ssh-running-probe",
///         Port = 22,
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
/// 		_, err = lb.NewProbe(ctx, "example", &lb.ProbeArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 			Name:           pulumi.String("ssh-running-probe"),
/// 			Port:           pulumi.Int(22),
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
/// import com.pulumi.azure.lb.Probe;
/// import com.pulumi.azure.lb.ProbeArgs;
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
///         var exampleProbe = new Probe("exampleProbe", ProbeArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("ssh-running-probe")
///             .port(22)
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
///   exampleProbe:
///     type: azure:lb:Probe
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: ssh-running-probe
///       port: 22
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
/// Load Balancer Probes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/probe:Probe example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/probes/probe1
/// ```
class Probe extends pulumi.CustomResource {
  /// The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
  late final pulumi.Output<int?> intervalInSeconds;
  late final pulumi.Output<List<String>> loadBalancerRules;
  /// The ID of the LoadBalancer in which to create the Probe. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the Probe. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to `2`. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
  late final pulumi.Output<int?> numberOfProbes;
  /// Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
  late final pulumi.Output<int> port;
  /// The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from `1` to `100`. The default value is `1`.
  late final pulumi.Output<int?> probeThreshold;
  /// Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. Defaults to `Tcp`.
  late final pulumi.Output<String?> protocol;
  /// The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed.
  late final pulumi.Output<String?> requestPath;

  /// Creates a new [Probe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Probe]. {@macro pulumi_lb_probe_probe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Probe(
    String name, {
    ProbeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/probe:Probe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.intervalInSeconds = registerOutput<int?>('intervalInSeconds');
    this.loadBalancerRules = registerOutput<List<String>>('loadBalancerRules');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.numberOfProbes = registerOutput<int?>('numberOfProbes');
    this.port = registerOutput<int>('port');
    this.probeThreshold = registerOutput<int?>('probeThreshold');
    this.protocol = registerOutput<String?>('protocol');
    this.requestPath = registerOutput<String?>('requestPath');
  }
}
