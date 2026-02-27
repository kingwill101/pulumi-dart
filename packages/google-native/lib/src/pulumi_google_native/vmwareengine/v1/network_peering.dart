import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_args.dart';

/// Creates a new network peering between the peer network and VMware Engine network provided in a `NetworkPeering` resource.
/// Auto-naming is currently not supported for this resource.
class NetworkPeering extends pulumi.CustomResource {
  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;

  /// Optional. User-provided description for this network peering.
  late final pulumi.Output<String> description;

  /// Optional. True if full mesh connectivity is created and managed automatically between peered networks; false otherwise. Currently this field is always true because Google Compute Engine automatically creates and manages subnetwork routes between two VPC networks when peering state is 'ACTIVE'.
  late final pulumi.Output<bool> exchangeSubnetRoutes;

  /// Optional. True if custom routes are exported to the peered network; false otherwise. The default value is true.
  late final pulumi.Output<bool> exportCustomRoutes;

  /// Optional. True if all subnet routes with a public IP address range are exported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  late final pulumi.Output<bool> exportCustomRoutesWithPublicIp;

  /// Optional. True if custom routes are imported from the peered network; false otherwise. The default value is true.
  late final pulumi.Output<bool> importCustomRoutes;

  /// Optional. True if all subnet routes with public IP address range are imported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and are not controlled by this field.
  late final pulumi.Output<bool> importCustomRoutesWithPublicIp;

  /// The resource name of the network peering. Resource names are scheme-less URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/networkPeerings/my-peering`
  late final pulumi.Output<String> name;

  /// Required. The user-provided identifier of the new `NetworkPeering`. This identifier must be unique among `NetworkPeering` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> networkPeeringId;

  /// Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0` is provided for this field, VMware Engine uses the default value instead.
  late final pulumi.Output<int> peerMtu;

  /// The relative resource name of the network to peer with a standard VMware Engine network. The provided network can be a consumer VPC network or another standard VMware Engine network. If the `peer_network_type` is VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. Otherwise specify the name in the form: `projects/{project}/global/networks/{network_id}`, where `{project}` can either be a project number or a project ID.
  late final pulumi.Output<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  late final pulumi.Output<String> peerNetworkType;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// State of the network peering. This field has a value of 'ACTIVE' when there's a matching configuration in the peer network. New values may be added to this enum when appropriate.
  late final pulumi.Output<String> state;

  /// Output Only. Details about the current state of the network peering.
  late final pulumi.Output<String> stateDetails;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  late final pulumi.Output<String> vmwareEngineNetwork;

  NetworkPeering(
    String name, {
    NetworkPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:NetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.exchangeSubnetRoutes = registerOutput<bool>('exchangeSubnetRoutes');
    this.exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    this.exportCustomRoutesWithPublicIp =
        registerOutput<bool>('exportCustomRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    this.importCustomRoutesWithPublicIp =
        registerOutput<bool>('importCustomRoutesWithPublicIp');
    this.name = registerOutput<String>('name');
    this.networkPeeringId = registerOutput<String>('networkPeeringId');
    this.peerMtu = registerOutput<int>('peerMtu');
    this.peerNetwork = registerOutput<String>('peerNetwork');
    this.peerNetworkType = registerOutput<String>('peerNetworkType');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
  }
}
