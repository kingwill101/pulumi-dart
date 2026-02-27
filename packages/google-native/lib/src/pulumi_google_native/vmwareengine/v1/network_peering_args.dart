// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_peer_network_type.dart';

/// The set of arguments for NetworkPeering.
class NetworkPeeringArgs {
  /// Optional. User-provided description for this network peering.
  final pulumi.Input<String>? description;

  /// Optional. True if full mesh connectivity is created and managed automatically between peered networks; false otherwise. Currently this field is always true because Google Compute Engine automatically creates and manages subnetwork routes between two VPC networks when peering state is 'ACTIVE'.
  final pulumi.Input<bool>? exchangeSubnetRoutes;

  /// Optional. True if custom routes are exported to the peered network; false otherwise. The default value is true.
  final pulumi.Input<bool>? exportCustomRoutes;

  /// Optional. True if all subnet routes with a public IP address range are exported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  final pulumi.Input<bool>? exportCustomRoutesWithPublicIp;

  /// Optional. True if custom routes are imported from the peered network; false otherwise. The default value is true.
  final pulumi.Input<bool>? importCustomRoutes;

  /// Optional. True if all subnet routes with public IP address range are imported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and are not controlled by this field.
  final pulumi.Input<bool>? importCustomRoutesWithPublicIp;

  /// Required. The user-provided identifier of the new `NetworkPeering`. This identifier must be unique among `NetworkPeering` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> networkPeeringId;

  /// Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0` is provided for this field, VMware Engine uses the default value instead.
  final pulumi.Input<int>? peerMtu;

  /// The relative resource name of the network to peer with a standard VMware Engine network. The provided network can be a consumer VPC network or another standard VMware Engine network. If the `peer_network_type` is VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. Otherwise specify the name in the form: `projects/{project}/global/networks/{network_id}`, where `{project}` can either be a project number or a project ID.
  final pulumi.Input<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  final pulumi.Input<NetworkPeeringPeerNetworkType> peerNetworkType;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final pulumi.Input<String> vmwareEngineNetwork;

  NetworkPeeringArgs({
    this.description,
    this.exchangeSubnetRoutes,
    this.exportCustomRoutes,
    this.exportCustomRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importCustomRoutesWithPublicIp,
    required this.networkPeeringId,
    this.peerMtu,
    required this.peerNetwork,
    required this.peerNetworkType,
    this.project,
    this.requestId,
    required this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final exchangeSubnetRoutesValue = exchangeSubnetRoutes;
    if (exchangeSubnetRoutesValue != null) {
      map['exchangeSubnetRoutes'] = exchangeSubnetRoutesValue;
    }
    final exportCustomRoutesValue = exportCustomRoutes;
    if (exportCustomRoutesValue != null) {
      map['exportCustomRoutes'] = exportCustomRoutesValue;
    }
    final exportCustomRoutesWithPublicIpValue = exportCustomRoutesWithPublicIp;
    if (exportCustomRoutesWithPublicIpValue != null) {
      map['exportCustomRoutesWithPublicIp'] =
          exportCustomRoutesWithPublicIpValue;
    }
    final importCustomRoutesValue = importCustomRoutes;
    if (importCustomRoutesValue != null) {
      map['importCustomRoutes'] = importCustomRoutesValue;
    }
    final importCustomRoutesWithPublicIpValue = importCustomRoutesWithPublicIp;
    if (importCustomRoutesWithPublicIpValue != null) {
      map['importCustomRoutesWithPublicIp'] =
          importCustomRoutesWithPublicIpValue;
    }
    map['networkPeeringId'] = networkPeeringId;
    final peerMtuValue = peerMtu;
    if (peerMtuValue != null) {
      map['peerMtu'] = peerMtuValue;
    }
    map['peerNetwork'] = peerNetwork;
    map['peerNetworkType'] =
        pulumi.Input.mapInputValue<NetworkPeeringPeerNetworkType, String>(
            peerNetworkType, (value) => value.value);
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    return map;
  }

  factory NetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      exchangeSubnetRoutes:
          pulumi.Input.asOptionalInput<bool>(map['exchangeSubnetRoutes']),
      exportCustomRoutes:
          pulumi.Input.asOptionalInput<bool>(map['exportCustomRoutes']),
      exportCustomRoutesWithPublicIp: pulumi.Input.asOptionalInput<bool>(
          map['exportCustomRoutesWithPublicIp']),
      importCustomRoutes:
          pulumi.Input.asOptionalInput<bool>(map['importCustomRoutes']),
      importCustomRoutesWithPublicIp: pulumi.Input.asOptionalInput<bool>(
          map['importCustomRoutesWithPublicIp']),
      networkPeeringId: pulumi.Input.asInput<String>(map['networkPeeringId']),
      peerMtu: pulumi.Input.asOptionalInput<int>(map['peerMtu']),
      peerNetwork: pulumi.Input.asInput<String>(map['peerNetwork']),
      peerNetworkType: pulumi.Input.asInput<NetworkPeeringPeerNetworkType>(
          map['peerNetworkType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      vmwareEngineNetwork:
          pulumi.Input.asInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
