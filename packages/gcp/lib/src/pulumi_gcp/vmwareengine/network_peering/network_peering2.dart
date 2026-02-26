import 'package:pulumi/pulumi.dart';
import 'network_peering_args2.dart';

/// Represents a network peering resource. Network peerings are global resources.
///
///
/// To get more information about NetworkPeering, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks/addPeering)
///
/// ## Example Usage
///
/// ### Vmware Engine Network Peering Ven
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_peering_nw = new gcp.vmwareengine.Network("network-peering-nw", {
/// name: "default-np-nw",
/// location: "global",
/// type: "STANDARD",
/// });
/// const network_peering_peer_nw = new gcp.vmwareengine.Network("network-peering-peer-nw", {
/// name: "peer-np-nw",
/// location: "global",
/// type: "STANDARD",
/// });
/// const vmw_engine_network_peering = new gcp.vmwareengine.NetworkPeering("vmw-engine-network-peering", {
/// name: "sample-network-peering",
/// description: "Sample description",
/// vmwareEngineNetwork: network_peering_nw.id,
/// peerNetwork: network_peering_peer_nw.id,
/// peerNetworkType: "VMWARE_ENGINE_NETWORK",
/// exportCustomRoutes: false,
/// importCustomRoutes: false,
/// exportCustomRoutesWithPublicIp: false,
/// importCustomRoutesWithPublicIp: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_peering_nw = gcp.vmwareengine.Network("network-peering-nw",
/// name="default-np-nw",
/// location="global",
/// type="STANDARD")
/// network_peering_peer_nw = gcp.vmwareengine.Network("network-peering-peer-nw",
/// name="peer-np-nw",
/// location="global",
/// type="STANDARD")
/// vmw_engine_network_peering = gcp.vmwareengine.NetworkPeering("vmw-engine-network-peering",
/// name="sample-network-peering",
/// description="Sample description",
/// vmware_engine_network=network_peering_nw.id,
/// peer_network=network_peering_peer_nw.id,
/// peer_network_type="VMWARE_ENGINE_NETWORK",
/// export_custom_routes=False,
/// import_custom_routes=False,
/// export_custom_routes_with_public_ip=False,
/// import_custom_routes_with_public_ip=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network_peering_nw = new Gcp.VMwareEngine.Network("network-peering-nw", new()
/// {
/// Name = "default-np-nw",
/// Location = "global",
/// Type = "STANDARD",
/// });
///
/// var network_peering_peer_nw = new Gcp.VMwareEngine.Network("network-peering-peer-nw", new()
/// {
/// Name = "peer-np-nw",
/// Location = "global",
/// Type = "STANDARD",
/// });
///
/// var vmw_engine_network_peering = new Gcp.VMwareEngine.NetworkPeering("vmw-engine-network-peering", new()
/// {
/// Name = "sample-network-peering",
/// Description = "Sample description",
/// VmwareEngineNetwork = network_peering_nw.Id,
/// PeerNetwork = network_peering_peer_nw.Id,
/// PeerNetworkType = "VMWARE_ENGINE_NETWORK",
/// ExportCustomRoutes = false,
/// ImportCustomRoutes = false,
/// ExportCustomRoutesWithPublicIp = false,
/// ImportCustomRoutesWithPublicIp = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network_peering_nw, err := vmwareengine.NewNetwork(ctx, "network-peering-nw", &vmwareengine.NetworkArgs{
/// Name:     pulumi.String("default-np-nw"),
/// Location: pulumi.String("global"),
/// Type:     pulumi.String("STANDARD"),
/// })
/// if err != nil {
/// return err
/// }
/// network_peering_peer_nw, err := vmwareengine.NewNetwork(ctx, "network-peering-peer-nw", &vmwareengine.NetworkArgs{
/// Name:     pulumi.String("peer-np-nw"),
/// Location: pulumi.String("global"),
/// Type:     pulumi.String("STANDARD"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vmwareengine.NewNetworkPeering(ctx, "vmw-engine-network-peering", &vmwareengine.NetworkPeeringArgs{
/// Name:                           pulumi.String("sample-network-peering"),
/// Description:                    pulumi.String("Sample description"),
/// VmwareEngineNetwork:            network_peering_nw.ID(),
/// PeerNetwork:                    network_peering_peer_nw.ID(),
/// PeerNetworkType:                pulumi.String("VMWARE_ENGINE_NETWORK"),
/// ExportCustomRoutes:             pulumi.Bool(false),
/// ImportCustomRoutes:             pulumi.Bool(false),
/// ExportCustomRoutesWithPublicIp: pulumi.Bool(false),
/// ImportCustomRoutesWithPublicIp: pulumi.Bool(false),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPeering;
/// import com.pulumi.gcp.vmwareengine.NetworkPeeringArgs;
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
/// var network_peering_nw = new Network("network-peering-nw", NetworkArgs.builder()
/// .name("default-np-nw")
/// .location("global")
/// .type("STANDARD")
/// .build());
///
/// var network_peering_peer_nw = new Network("network-peering-peer-nw", NetworkArgs.builder()
/// .name("peer-np-nw")
/// .location("global")
/// .type("STANDARD")
/// .build());
///
/// var vmw_engine_network_peering = new NetworkPeering("vmw-engine-network-peering", NetworkPeeringArgs.builder()
/// .name("sample-network-peering")
/// .description("Sample description")
/// .vmwareEngineNetwork(network_peering_nw.id())
/// .peerNetwork(network_peering_peer_nw.id())
/// .peerNetworkType("VMWARE_ENGINE_NETWORK")
/// .exportCustomRoutes(false)
/// .importCustomRoutes(false)
/// .exportCustomRoutesWithPublicIp(false)
/// .importCustomRoutesWithPublicIp(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network-peering-nw:
/// type: gcp:vmwareengine:Network
/// properties:
/// name: default-np-nw
/// location: global
/// type: STANDARD
/// network-peering-peer-nw:
/// type: gcp:vmwareengine:Network
/// properties:
/// name: peer-np-nw
/// location: global
/// type: STANDARD
/// vmw-engine-network-peering:
/// type: gcp:vmwareengine:NetworkPeering
/// properties:
/// name: sample-network-peering
/// description: Sample description
/// vmwareEngineNetwork: ${["network-peering-nw"].id}
/// peerNetwork: ${["network-peering-peer-nw"].id}
/// peerNetworkType: VMWARE_ENGINE_NETWORK
/// exportCustomRoutes: false
/// importCustomRoutes: false
/// exportCustomRoutesWithPublicIp: false
/// importCustomRoutesWithPublicIp: false
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Vmware Engine Network Peering Standard
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_peering_vpc = new gcp.compute.Network("network-peering-vpc", {name: "default-vpc"});
/// const network_peering_standard_nw = new gcp.vmwareengine.Network("network-peering-standard-nw", {
/// name: "default-standard-nw-np",
/// location: "global",
/// type: "STANDARD",
/// });
/// const vmw_engine_network_peering = new gcp.vmwareengine.NetworkPeering("vmw-engine-network-peering", {
/// name: "sample-network-peering",
/// description: "Sample description",
/// peerNetwork: network_peering_vpc.id,
/// peerNetworkType: "STANDARD",
/// vmwareEngineNetwork: network_peering_standard_nw.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_peering_vpc = gcp.compute.Network("network-peering-vpc", name="default-vpc")
/// network_peering_standard_nw = gcp.vmwareengine.Network("network-peering-standard-nw",
/// name="default-standard-nw-np",
/// location="global",
/// type="STANDARD")
/// vmw_engine_network_peering = gcp.vmwareengine.NetworkPeering("vmw-engine-network-peering",
/// name="sample-network-peering",
/// description="Sample description",
/// peer_network=network_peering_vpc.id,
/// peer_network_type="STANDARD",
/// vmware_engine_network=network_peering_standard_nw.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var network_peering_vpc = new Gcp.Compute.Network("network-peering-vpc", new()
/// {
/// Name = "default-vpc",
/// });
///
/// var network_peering_standard_nw = new Gcp.VMwareEngine.Network("network-peering-standard-nw", new()
/// {
/// Name = "default-standard-nw-np",
/// Location = "global",
/// Type = "STANDARD",
/// });
///
/// var vmw_engine_network_peering = new Gcp.VMwareEngine.NetworkPeering("vmw-engine-network-peering", new()
/// {
/// Name = "sample-network-peering",
/// Description = "Sample description",
/// PeerNetwork = network_peering_vpc.Id,
/// PeerNetworkType = "STANDARD",
/// VmwareEngineNetwork = network_peering_standard_nw.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network_peering_vpc, err := compute.NewNetwork(ctx, "network-peering-vpc", &compute.NetworkArgs{
/// Name: pulumi.String("default-vpc"),
/// })
/// if err != nil {
/// return err
/// }
/// network_peering_standard_nw, err := vmwareengine.NewNetwork(ctx, "network-peering-standard-nw", &vmwareengine.NetworkArgs{
/// Name:     pulumi.String("default-standard-nw-np"),
/// Location: pulumi.String("global"),
/// Type:     pulumi.String("STANDARD"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vmwareengine.NewNetworkPeering(ctx, "vmw-engine-network-peering", &vmwareengine.NetworkPeeringArgs{
/// Name:                pulumi.String("sample-network-peering"),
/// Description:         pulumi.String("Sample description"),
/// PeerNetwork:         network_peering_vpc.ID(),
/// PeerNetworkType:     pulumi.String("STANDARD"),
/// VmwareEngineNetwork: network_peering_standard_nw.ID(),
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
/// import com.pulumi.gcp.vmwareengine.NetworkPeering;
/// import com.pulumi.gcp.vmwareengine.NetworkPeeringArgs;
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
/// var network_peering_vpc = new com.pulumi.gcp.compute.Network("network-peering-vpc", com.pulumi.gcp.compute.NetworkArgs.builder()
/// .name("default-vpc")
/// .build());
///
/// var network_peering_standard_nw = new com.pulumi.gcp.vmwareengine.Network("network-peering-standard-nw", com.pulumi.gcp.vmwareengine.NetworkArgs.builder()
/// .name("default-standard-nw-np")
/// .location("global")
/// .type("STANDARD")
/// .build());
///
/// var vmw_engine_network_peering = new NetworkPeering("vmw-engine-network-peering", NetworkPeeringArgs.builder()
/// .name("sample-network-peering")
/// .description("Sample description")
/// .peerNetwork(network_peering_vpc.id())
/// .peerNetworkType("STANDARD")
/// .vmwareEngineNetwork(network_peering_standard_nw.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// network-peering-vpc:
/// type: gcp:compute:Network
/// properties:
/// name: default-vpc
/// network-peering-standard-nw:
/// type: gcp:vmwareengine:Network
/// properties:
/// name: default-standard-nw-np
/// location: global
/// type: STANDARD
/// vmw-engine-network-peering:
/// type: gcp:vmwareengine:NetworkPeering
/// properties:
/// name: sample-network-peering
/// description: Sample description
/// peerNetwork: ${["network-peering-vpc"].id}
/// peerNetworkType: STANDARD
/// vmwareEngineNetwork: ${["network-peering-standard-nw"].id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NetworkPeering can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/networkPeerings/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkPeering can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPeering:NetworkPeering default projects/{{project}}/locations/global/networkPeerings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPeering:NetworkPeering default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPeering:NetworkPeering default {{name}}
/// ```
class NetworkPeering2 extends CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// User-provided description for this network peering.
  late final Output<String?> description;

  /// True if custom routes are exported to the peered network; false otherwise.
  late final Output<bool?> exportCustomRoutes;

  /// True if all subnet routes with a public IP address range are exported; false otherwise.
  late final Output<bool?> exportCustomRoutesWithPublicIp;

  /// True if custom routes are imported from the peered network; false otherwise.
  late final Output<bool?> importCustomRoutes;

  /// True if custom routes are imported from the peered network; false otherwise.
  late final Output<bool?> importCustomRoutesWithPublicIp;

  /// The ID of the Network Peering.
  late final Output<String> name;

  /// The relative resource name of the network to peer with a standard VMware Engine network.
  /// The provided network can be a consumer VPC network or another standard VMware Engine network.
  late final Output<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  late final Output<String> peerNetworkType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// State of the network peering.
  /// This field has a value of 'ACTIVE' when there's a matching configuration in the peer network.
  /// New values may be added to this enum when appropriate.
  late final Output<String> state;

  /// Details about the current state of the network peering.
  late final Output<String> stateDetails;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  late final Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  late final Output<String> vmwareEngineNetworkCanonical;

  NetworkPeering2(
    String name, {
    NetworkPeeringArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/networkPeering:NetworkPeering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.exportCustomRoutes = registerOutput<bool?>('exportCustomRoutes');
    this.exportCustomRoutesWithPublicIp =
        registerOutput<bool?>('exportCustomRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool?>('importCustomRoutes');
    this.importCustomRoutesWithPublicIp =
        registerOutput<bool?>('importCustomRoutesWithPublicIp');
    this.name = registerOutput<String>('name');
    this.peerNetwork = registerOutput<String>('peerNetwork');
    this.peerNetworkType = registerOutput<String>('peerNetworkType');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
    this.vmwareEngineNetworkCanonical =
        registerOutput<String>('vmwareEngineNetworkCanonical');
  }
}
