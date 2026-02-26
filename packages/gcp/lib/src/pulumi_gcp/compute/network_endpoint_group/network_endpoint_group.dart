import 'package:pulumi/pulumi.dart';
import 'network_endpoint_group_args.dart';

/// Network endpoint groups (NEGs) are zonal resources that represent
/// collections of IP address and port combinations for GCP resources within a
/// single subnet. Each IP address and port combination is called a network
/// endpoint.
///
/// Network endpoint groups can be used as backends in backend services for
/// HTTP(S), TCP proxy, and SSL proxy load balancers. You cannot use NEGs as a
/// backend with internal load balancers. Because NEG backends allow you to
/// specify IP addresses and ports, you can distribute traffic in a granular
/// fashion among applications or containers running within VM instances.
///
/// Recreating a network endpoint group that's in use by another resource will give a
/// `resourceInUseByAnotherResource` error. Use `lifecycle.create_before_destroy`
/// to avoid this type of error.
///
///
/// To get more information about NetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoint Group
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
/// name: "neg-network",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "neg-subnetwork",
/// ipCidrRange: "10.0.0.0/16",
/// region: "us-central1",
/// network: _default.id,
/// });
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
/// name: "my-lb-neg",
/// network: _default.id,
/// subnetwork: defaultSubnetwork.id,
/// defaultPort: 90,
/// zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
/// name="neg-network",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="neg-subnetwork",
/// ip_cidr_range="10.0.0.0/16",
/// region="us-central1",
/// network=default.id)
/// neg = gcp.compute.NetworkEndpointGroup("neg",
/// name="my-lb-neg",
/// network=default.id,
/// subnetwork=default_subnetwork.id,
/// default_port=90,
/// zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "neg-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "neg-subnetwork",
/// IpCidrRange = "10.0.0.0/16",
/// Region = "us-central1",
/// Network = @default.Id,
/// });
///
/// var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
/// {
/// Name = "my-lb-neg",
/// Network = @default.Id,
/// Subnetwork = defaultSubnetwork.Id,
/// DefaultPort = 90,
/// Zone = "us-central1-a",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("neg-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("neg-subnetwork"),
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// Name:        pulumi.String("my-lb-neg"),
/// Network:     _default.ID(),
/// Subnetwork:  defaultSubnetwork.ID(),
/// DefaultPort: pulumi.Int(90),
/// Zone:        pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("neg-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("neg-subnetwork")
/// .ipCidrRange("10.0.0.0/16")
/// .region("us-central1")
/// .network(default_.id())
/// .build());
///
/// var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
/// .name("my-lb-neg")
/// .network(default_.id())
/// .subnetwork(defaultSubnetwork.id())
/// .defaultPort(90)
/// .zone("us-central1-a")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// neg:
/// type: gcp:compute:NetworkEndpointGroup
/// properties:
/// name: my-lb-neg
/// network: ${default.id}
/// subnetwork: ${defaultSubnetwork.id}
/// defaultPort: '90'
/// zone: us-central1-a
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: neg-network
/// autoCreateSubnetworks: false
/// defaultSubnetwork:
/// type: gcp:compute:Subnetwork
/// name: default
/// properties:
/// name: neg-subnetwork
/// ipCidrRange: 10.0.0.0/16
/// region: us-central1
/// network: ${default.id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Endpoint Group Non Gcp
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "neg-network"});
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
/// name: "my-lb-neg",
/// network: _default.id,
/// defaultPort: 90,
/// zone: "us-central1-a",
/// networkEndpointType: "NON_GCP_PRIVATE_IP_PORT",
/// });
/// const default_endpoint = new gcp.compute.NetworkEndpoint("default-endpoint", {
/// networkEndpointGroup: neg.name,
/// port: neg.defaultPort,
/// ipAddress: "127.0.0.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="neg-network")
/// neg = gcp.compute.NetworkEndpointGroup("neg",
/// name="my-lb-neg",
/// network=default.id,
/// default_port=90,
/// zone="us-central1-a",
/// network_endpoint_type="NON_GCP_PRIVATE_IP_PORT")
/// default_endpoint = gcp.compute.NetworkEndpoint("default-endpoint",
/// network_endpoint_group=neg.name,
/// port=neg.default_port,
/// ip_address="127.0.0.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "neg-network",
/// });
///
/// var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
/// {
/// Name = "my-lb-neg",
/// Network = @default.Id,
/// DefaultPort = 90,
/// Zone = "us-central1-a",
/// NetworkEndpointType = "NON_GCP_PRIVATE_IP_PORT",
/// });
///
/// var default_endpoint = new Gcp.Compute.NetworkEndpoint("default-endpoint", new()
/// {
/// NetworkEndpointGroup = neg.Name,
/// Port = neg.DefaultPort,
/// IpAddress = "127.0.0.1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("neg-network"),
/// })
/// if err != nil {
/// return err
/// }
/// neg, err := compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// Name:                pulumi.String("my-lb-neg"),
/// Network:             _default.ID(),
/// DefaultPort:         pulumi.Int(90),
/// Zone:                pulumi.String("us-central1-a"),
/// NetworkEndpointType: pulumi.String("NON_GCP_PRIVATE_IP_PORT"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkEndpoint(ctx, "default-endpoint", &compute.NetworkEndpointArgs{
/// NetworkEndpointGroup: neg.Name,
/// Port:                 neg.DefaultPort,
/// IpAddress:            pulumi.String("127.0.0.1"),
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
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("neg-network")
/// .build());
///
/// var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
/// .name("my-lb-neg")
/// .network(default_.id())
/// .defaultPort(90)
/// .zone("us-central1-a")
/// .networkEndpointType("NON_GCP_PRIVATE_IP_PORT")
/// .build());
///
/// var default_endpoint = new NetworkEndpoint("default-endpoint", NetworkEndpointArgs.builder()
/// .networkEndpointGroup(neg.name())
/// .port(neg.defaultPort())
/// .ipAddress("127.0.0.1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// neg:
/// type: gcp:compute:NetworkEndpointGroup
/// properties:
/// name: my-lb-neg
/// network: ${default.id}
/// defaultPort: '90'
/// zone: us-central1-a
/// networkEndpointType: NON_GCP_PRIVATE_IP_PORT
/// default-endpoint:
/// type: gcp:compute:NetworkEndpoint
/// properties:
/// networkEndpointGroup: ${neg.name}
/// port: ${neg.defaultPort}
/// ipAddress: 127.0.0.1
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: neg-network
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{name}}
/// ```
class NetworkEndpointGroup extends CustomResource {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  late final Output<int?> defaultPort;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// The uniquely generated identifier for the resource. This identifier is defined by the server.
  late final Output<int> generatedId;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  late final Output<String> network;

  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT.
  /// Default value is `GCE_VM_IP_PORT`.
  /// Possible values are: `GCE_VM_IP`, `GCE_VM_IP_PORT`, `NON_GCP_PRIVATE_IP_PORT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`.
  late final Output<String?> networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Number of network endpoints in the network endpoint group.
  late final Output<int> size;

  /// Optional subnetwork to which all network endpoints in the NEG belong.
  late final Output<String?> subnetwork;

  /// Zone where the network endpoint group is located.
  late final Output<String> zone;

  NetworkEndpointGroup(
    String name, {
    NetworkEndpointGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointGroup:NetworkEndpointGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultPort = registerOutput<int?>('defaultPort');
    this.description = registerOutput<String?>('description');
    this.generatedId = registerOutput<int>('generatedId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkEndpointType = registerOutput<String?>('networkEndpointType');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<int>('size');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.zone = registerOutput<String>('zone');
  }
}
