import 'package:pulumi/pulumi.dart';
import 'network_endpoint_args.dart';

/// A Network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group (NEG). NEGs are zonal
/// collections of these endpoints for GCP resources within a
/// single subnet. **NOTE**: Network endpoints cannot be created outside of a
/// network endpoint group.
///
/// > **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> twice. To avoid situations like this, please use this resource
/// with the lifecycle <span pulumi-lang-nodejs="`replaceTriggeredBy`" pulumi-lang-dotnet="`ReplaceTriggeredBy`" pulumi-lang-go="`replaceTriggeredBy`" pulumi-lang-python="`replace_triggered_by`" pulumi-lang-yaml="`replaceTriggeredBy`" pulumi-lang-java="`replaceTriggeredBy`">`replace_triggered_by`</span> method, with the passed Instance's ID.
///
///
/// To get more information about NetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoint
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const _default = new gcp.compute.Network("default", {
/// name: "neg-network",
/// autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
/// name: "neg-subnetwork",
/// ipCidrRange: "10.0.0.1/16",
/// region: "us-central1",
/// network: _default.id,
/// });
/// const endpoint_instance = new gcp.compute.Instance("endpoint-instance", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// subnetwork: defaultSubnetwork.id,
/// }],
/// name: "endpoint-instance",
/// machineType: "e2-medium",
/// bootDisk: {
/// initializeParams: {
/// image: myImage.then(myImage => myImage.selfLink),
/// },
/// },
/// });
/// const default_endpoint = new gcp.compute.NetworkEndpoint("default-endpoint", {
/// networkEndpointGroup: neg.name,
/// instance: endpoint_instance.name,
/// port: neg.defaultPort,
/// ipAddress: endpoint_instance.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
/// });
/// const group = new gcp.compute.NetworkEndpointGroup("group", {
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
/// my_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// default = gcp.compute.Network("default",
/// name="neg-network",
/// auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
/// name="neg-subnetwork",
/// ip_cidr_range="10.0.0.1/16",
/// region="us-central1",
/// network=default.id)
/// endpoint_instance = gcp.compute.Instance("endpoint-instance",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "subnetwork": default_subnetwork.id,
/// }],
/// name="endpoint-instance",
/// machine_type="e2-medium",
/// boot_disk={
/// "initialize_params": {
/// "image": my_image.self_link,
/// },
/// })
/// default_endpoint = gcp.compute.NetworkEndpoint("default-endpoint",
/// network_endpoint_group=neg["name"],
/// instance=endpoint_instance.name,
/// port=neg["defaultPort"],
/// ip_address=endpoint_instance.network_interfaces[0].network_ip)
/// group = gcp.compute.NetworkEndpointGroup("group",
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
/// var myImage = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "neg-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
/// {
/// Name = "neg-subnetwork",
/// IpCidrRange = "10.0.0.1/16",
/// Region = "us-central1",
/// Network = @default.Id,
/// });
///
/// var endpoint_instance = new Gcp.Compute.Instance("endpoint-instance", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Subnetwork = defaultSubnetwork.Id,
/// },
/// },
/// Name = "endpoint-instance",
/// MachineType = "e2-medium",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
/// },
/// },
/// });
///
/// var default_endpoint = new Gcp.Compute.NetworkEndpoint("default-endpoint", new()
/// {
/// NetworkEndpointGroup = neg.Name,
/// Instance = endpoint_instance.Name,
/// Port = neg.DefaultPort,
/// IpAddress = endpoint_instance.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
/// });
///
/// var @group = new Gcp.Compute.NetworkEndpointGroup("group", new()
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
/// myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name:                  pulumi.String("neg-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// Name:        pulumi.String("neg-subnetwork"),
/// IpCidrRange: pulumi.String("10.0.0.1/16"),
/// Region:      pulumi.String("us-central1"),
/// Network:     _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// endpoint_instance, err := compute.NewInstance(ctx, "endpoint-instance", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Subnetwork: defaultSubnetwork.ID(),
/// },
/// },
/// Name:        pulumi.String("endpoint-instance"),
/// MachineType: pulumi.String("e2-medium"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String(myImage.SelfLink),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkEndpoint(ctx, "default-endpoint", &compute.NetworkEndpointArgs{
/// NetworkEndpointGroup: pulumi.Any(neg.Name),
/// Instance:             endpoint_instance.Name,
/// Port:                 pulumi.Any(neg.DefaultPort),
/// IpAddress: pulumi.String(endpoint_instance.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// return &networkInterfaces[0].NetworkIp, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkEndpointGroup(ctx, "group", &compute.NetworkEndpointGroupArgs{
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
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
/// final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("neg-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
/// .name("neg-subnetwork")
/// .ipCidrRange("10.0.0.1/16")
/// .region("us-central1")
/// .network(default_.id())
/// .build());
///
/// var endpoint_instance = new Instance("endpoint-instance", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .subnetwork(defaultSubnetwork.id())
/// .build())
/// .name("endpoint-instance")
/// .machineType("e2-medium")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image(myImage.selfLink())
/// .build())
/// .build())
/// .build());
///
/// var default_endpoint = new NetworkEndpoint("default-endpoint", NetworkEndpointArgs.builder()
/// .networkEndpointGroup(neg.name())
/// .instance(endpoint_instance.name())
/// .port(neg.defaultPort())
/// .ipAddress(endpoint_instance.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
/// .build());
///
/// var group = new NetworkEndpointGroup("group", NetworkEndpointGroupArgs.builder()
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
/// default-endpoint:
/// type: gcp:compute:NetworkEndpoint
/// properties:
/// networkEndpointGroup: ${neg.name}
/// instance: ${["endpoint-instance"].name}
/// port: ${neg.defaultPort}
/// ipAddress: ${["endpoint-instance"].networkInterfaces[0].networkIp}
/// endpoint-instance:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// subnetwork: ${defaultSubnetwork.id}
/// name: endpoint-instance
/// machineType: e2-medium
/// bootDisk:
/// initializeParams:
/// image: ${myImage.selfLink}
/// group:
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
/// ipCidrRange: 10.0.0.1/16
/// region: us-central1
/// network: ${default.id}
/// variables:
/// myImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
/// * `{{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
/// * `{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
/// * `{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
/// When using the `pulumi import` command, NetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
class NetworkEndpoint extends CustomResource {
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone of network endpoint group.
  late final Output<String?> instance;

  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  late final Output<String> ipAddress;

  /// The network endpoint group this endpoint is part of.
  late final Output<String> networkEndpointGroup;

  /// Port number of network endpoint.
  /// **Note** <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  late final Output<int?> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Zone where the containing network endpoint group is located.
  late final Output<String> zone;

  NetworkEndpoint(
    String name, {
    NetworkEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpoint:NetworkEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instance = registerOutput<String?>('instance');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    this.port = registerOutput<int?>('port');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
