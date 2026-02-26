import 'package:pulumi/pulumi.dart';
import '../policy_based_route_filter/policy_based_route_filter.dart';
import '../policy_based_route_interconnect_attachment/policy_based_route_interconnect_attachment.dart';
import '../policy_based_route_virtual_machine/policy_based_route_virtual_machine.dart';
import '../policy_based_route_warning/policy_based_route_warning.dart';
import 'policy_based_route_args.dart';

/// Policy-based Routes are more powerful routes that route L4 network traffic based on not just destination IP, but also source IP, protocol and more. A Policy-based Route always take precedence when it conflicts with other types of routes.
///
///
/// To get more information about PolicyBasedRoute, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.global.policyBasedRoutes)
/// * How-to Guides
/// * [Use policy-based routes](https://cloud.google.com/vpc/docs/use-policy-based-routes#api)
///
/// ## Example Usage
///
/// ### Network Connectivity Policy Based Route Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networkconnectivity.PolicyBasedRoute("default", {
/// name: "my-pbr",
/// network: myNetwork.id,
/// filter: {
/// protocolVersion: "IPV4",
/// },
/// nextHopOtherRoutes: "DEFAULT_ROUTING",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
/// name="my-network",
/// auto_create_subnetworks=False)
/// default = gcp.networkconnectivity.PolicyBasedRoute("default",
/// name="my-pbr",
/// network=my_network.id,
/// filter={
/// "protocol_version": "IPV4",
/// },
/// next_hop_other_routes="DEFAULT_ROUTING")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myNetwork = new Gcp.Compute.Network("my_network", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var @default = new Gcp.NetworkConnectivity.PolicyBasedRoute("default", new()
/// {
/// Name = "my-pbr",
/// Network = myNetwork.Id,
/// Filter = new Gcp.NetworkConnectivity.Inputs.PolicyBasedRouteFilterArgs
/// {
/// ProtocolVersion = "IPV4",
/// },
/// NextHopOtherRoutes = "DEFAULT_ROUTING",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkconnectivity.NewPolicyBasedRoute(ctx, "default", &networkconnectivity.PolicyBasedRouteArgs{
/// Name:    pulumi.String("my-pbr"),
/// Network: myNetwork.ID(),
/// Filter: &networkconnectivity.PolicyBasedRouteFilterArgs{
/// ProtocolVersion: pulumi.String("IPV4"),
/// },
/// NextHopOtherRoutes: pulumi.String("DEFAULT_ROUTING"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.PolicyBasedRoute;
/// import com.pulumi.gcp.networkconnectivity.PolicyBasedRouteArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.PolicyBasedRouteFilterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myNetwork = new Network("myNetwork", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var default_ = new PolicyBasedRoute("default", PolicyBasedRouteArgs.builder()
/// .name("my-pbr")
/// .network(myNetwork.id())
/// .filter(PolicyBasedRouteFilterArgs.builder()
/// .protocolVersion("IPV4")
/// .build())
/// .nextHopOtherRoutes("DEFAULT_ROUTING")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networkconnectivity:PolicyBasedRoute
/// properties:
/// name: my-pbr
/// network: ${myNetwork.id}
/// filter:
/// protocolVersion: IPV4
/// nextHopOtherRoutes: DEFAULT_ROUTING
/// myNetwork:
/// type: gcp:compute:Network
/// name: my_network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Connectivity Policy Based Route Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// // This example substitutes an arbitrary internal IP for an internal network
/// // load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// // to set one up.
/// const ilb = new gcp.compute.GlobalAddress("ilb", {name: "my-ilb"});
/// const _default = new gcp.networkconnectivity.PolicyBasedRoute("default", {
/// name: "my-pbr",
/// description: "My routing policy",
/// network: myNetwork.id,
/// priority: 2302,
/// filter: {
/// protocolVersion: "IPV4",
/// ipProtocol: "UDP",
/// srcRange: "10.0.0.0/24",
/// destRange: "0.0.0.0/0",
/// },
/// nextHopIlbIp: ilb.address,
/// virtualMachine: {
/// tags: ["restricted"],
/// },
/// labels: {
/// env: "default",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
/// name="my-network",
/// auto_create_subnetworks=False)
/// # This example substitutes an arbitrary internal IP for an internal network
/// # load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// # to set one up.
/// ilb = gcp.compute.GlobalAddress("ilb", name="my-ilb")
/// default = gcp.networkconnectivity.PolicyBasedRoute("default",
/// name="my-pbr",
/// description="My routing policy",
/// network=my_network.id,
/// priority=2302,
/// filter={
/// "protocol_version": "IPV4",
/// "ip_protocol": "UDP",
/// "src_range": "10.0.0.0/24",
/// "dest_range": "0.0.0.0/0",
/// },
/// next_hop_ilb_ip=ilb.address,
/// virtual_machine={
/// "tags": ["restricted"],
/// },
/// labels={
/// "env": "default",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myNetwork = new Gcp.Compute.Network("my_network", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// // This example substitutes an arbitrary internal IP for an internal network
/// // load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// // to set one up.
/// var ilb = new Gcp.Compute.GlobalAddress("ilb", new()
/// {
/// Name = "my-ilb",
/// });
///
/// var @default = new Gcp.NetworkConnectivity.PolicyBasedRoute("default", new()
/// {
/// Name = "my-pbr",
/// Description = "My routing policy",
/// Network = myNetwork.Id,
/// Priority = 2302,
/// Filter = new Gcp.NetworkConnectivity.Inputs.PolicyBasedRouteFilterArgs
/// {
/// ProtocolVersion = "IPV4",
/// IpProtocol = "UDP",
/// SrcRange = "10.0.0.0/24",
/// DestRange = "0.0.0.0/0",
/// },
/// NextHopIlbIp = ilb.Address,
/// VirtualMachine = new Gcp.NetworkConnectivity.Inputs.PolicyBasedRouteVirtualMachineArgs
/// {
/// Tags = new[]
/// {
/// "restricted",
/// },
/// },
/// Labels =
/// {
/// { "env", "default" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// // This example substitutes an arbitrary internal IP for an internal network
/// // load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// // to set one up.
/// ilb, err := compute.NewGlobalAddress(ctx, "ilb", &compute.GlobalAddressArgs{
/// Name: pulumi.String("my-ilb"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkconnectivity.NewPolicyBasedRoute(ctx, "default", &networkconnectivity.PolicyBasedRouteArgs{
/// Name:        pulumi.String("my-pbr"),
/// Description: pulumi.String("My routing policy"),
/// Network:     myNetwork.ID(),
/// Priority:    pulumi.Int(2302),
/// Filter: &networkconnectivity.PolicyBasedRouteFilterArgs{
/// ProtocolVersion: pulumi.String("IPV4"),
/// IpProtocol:      pulumi.String("UDP"),
/// SrcRange:        pulumi.String("10.0.0.0/24"),
/// DestRange:       pulumi.String("0.0.0.0/0"),
/// },
/// NextHopIlbIp: ilb.Address,
/// VirtualMachine: &networkconnectivity.PolicyBasedRouteVirtualMachineArgs{
/// Tags: pulumi.StringArray{
/// pulumi.String("restricted"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("default"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.networkconnectivity.PolicyBasedRoute;
/// import com.pulumi.gcp.networkconnectivity.PolicyBasedRouteArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.PolicyBasedRouteFilterArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.PolicyBasedRouteVirtualMachineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myNetwork = new Network("myNetwork", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// // This example substitutes an arbitrary internal IP for an internal network
/// // load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// // to set one up.
/// var ilb = new GlobalAddress("ilb", GlobalAddressArgs.builder()
/// .name("my-ilb")
/// .build());
///
/// var default_ = new PolicyBasedRoute("default", PolicyBasedRouteArgs.builder()
/// .name("my-pbr")
/// .description("My routing policy")
/// .network(myNetwork.id())
/// .priority(2302)
/// .filter(PolicyBasedRouteFilterArgs.builder()
/// .protocolVersion("IPV4")
/// .ipProtocol("UDP")
/// .srcRange("10.0.0.0/24")
/// .destRange("0.0.0.0/0")
/// .build())
/// .nextHopIlbIp(ilb.address())
/// .virtualMachine(PolicyBasedRouteVirtualMachineArgs.builder()
/// .tags("restricted")
/// .build())
/// .labels(Map.of("env", "default"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networkconnectivity:PolicyBasedRoute
/// properties:
/// name: my-pbr
/// description: My routing policy
/// network: ${myNetwork.id}
/// priority: 2302
/// filter:
/// protocolVersion: IPV4
/// ipProtocol: UDP
/// srcRange: 10.0.0.0/24
/// destRange: 0.0.0.0/0
/// nextHopIlbIp: ${ilb.address}
/// virtualMachine:
/// tags:
/// - restricted
/// labels:
/// env: default
/// myNetwork:
/// type: gcp:compute:Network
/// name: my_network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// # This example substitutes an arbitrary internal IP for an internal network
/// # load balancer for brevity. Consult https://cloud.google.com/load-balancing/docs/internal
/// # to set one up.
/// ilb:
/// type: gcp:compute:GlobalAddress
/// properties:
/// name: my-ilb
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// PolicyBasedRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/policyBasedRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PolicyBasedRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default projects/{{project}}/locations/global/policyBasedRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute default {{name}}
/// ```
class PolicyBasedRoute extends CustomResource {
  /// Time when the policy-based route was created.
  late final Output<String> createTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The filter to match L4 traffic.
  /// Structure is documented below.
  late final Output<PolicyBasedRouteFilter> filter;

  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  late final Output<PolicyBasedRouteInterconnectAttachment?>
      interconnectAttachment;

  /// Type of this resource.
  late final Output<String> kind;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the policy based route.
  late final Output<String> name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  late final Output<String> network;

  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  late final Output<String?> nextHopIlbIp;

  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  late final Output<String?> nextHopOtherRoutes;

  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  late final Output<int?> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Time when the policy-based route was created.
  late final Output<String> updateTime;

  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  late final Output<PolicyBasedRouteVirtualMachine?> virtualMachine;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  late final Output<List<PolicyBasedRouteWarning>> warnings;

  PolicyBasedRoute(
    String name, {
    PolicyBasedRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/policyBasedRoute:PolicyBasedRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.filter = registerOutput<PolicyBasedRouteFilter>('filter');
    this.interconnectAttachment =
        registerOutput<PolicyBasedRouteInterconnectAttachment?>(
            'interconnectAttachment');
    this.kind = registerOutput<String>('kind');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nextHopIlbIp = registerOutput<String?>('nextHopIlbIp');
    this.nextHopOtherRoutes = registerOutput<String?>('nextHopOtherRoutes');
    this.priority = registerOutput<int?>('priority');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachine =
        registerOutput<PolicyBasedRouteVirtualMachine?>('virtualMachine');
    this.warnings = registerOutput<List<PolicyBasedRouteWarning>>('warnings');
  }
}
