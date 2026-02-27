import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_vmwareengine_args.dart';

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
///
/// ### Vmware Engine Network Peering Standard
///
///
///
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
class NetworkPeeringVmwareengine extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for this network peering.
  late final pulumi.Output<String?> description;

  /// True if custom routes are exported to the peered network; false otherwise.
  late final pulumi.Output<bool?> exportCustomRoutes;

  /// True if all subnet routes with a public IP address range are exported; false otherwise.
  late final pulumi.Output<bool?> exportCustomRoutesWithPublicIp;

  /// True if custom routes are imported from the peered network; false otherwise.
  late final pulumi.Output<bool?> importCustomRoutes;

  /// True if custom routes are imported from the peered network; false otherwise.
  late final pulumi.Output<bool?> importCustomRoutesWithPublicIp;

  /// The ID of the Network Peering.
  late final pulumi.Output<String> name;

  /// The relative resource name of the network to peer with a standard VMware Engine network.
  /// The provided network can be a consumer VPC network or another standard VMware Engine network.
  late final pulumi.Output<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  late final pulumi.Output<String> peerNetworkType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// State of the network peering.
  /// This field has a value of 'ACTIVE' when there's a matching configuration in the peer network.
  /// New values may be added to this enum when appropriate.
  late final pulumi.Output<String> state;

  /// Details about the current state of the network peering.
  late final pulumi.Output<String> stateDetails;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  late final pulumi.Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  late final pulumi.Output<String> vmwareEngineNetworkCanonical;

  NetworkPeeringVmwareengine(
    String name, {
    NetworkPeeringVmwareengineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/networkPeering:NetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
