// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkPeering.
class NetworkPeeringArgs2 {
  /// User-provided description for this network peering.
  final Input<String>? description;

  /// True if custom routes are exported to the peered network; false otherwise.
  final Input<bool>? exportCustomRoutes;

  /// True if all subnet routes with a public IP address range are exported; false otherwise.
  final Input<bool>? exportCustomRoutesWithPublicIp;

  /// True if custom routes are imported from the peered network; false otherwise.
  final Input<bool>? importCustomRoutes;

  /// True if custom routes are imported from the peered network; false otherwise.
  final Input<bool>? importCustomRoutesWithPublicIp;

  /// The ID of the Network Peering.
  final Input<String>? name;

  /// The relative resource name of the network to peer with a standard VMware Engine network.
  /// The provided network can be a consumer VPC network or another standard VMware Engine network.
  final Input<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  final Input<String> peerNetworkType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final Input<String> vmwareEngineNetwork;

  NetworkPeeringArgs2({
    this.description,
    this.exportCustomRoutes,
    this.exportCustomRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importCustomRoutesWithPublicIp,
    this.name,
    required this.peerNetwork,
    required this.peerNetworkType,
    this.project,
    required this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['peerNetwork'] = peerNetwork;
    map['peerNetworkType'] = peerNetworkType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    return map;
  }

  factory NetworkPeeringArgs2.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      exportCustomRoutes:
          Input.asOptionalInput<bool>(map['exportCustomRoutes']),
      exportCustomRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['exportCustomRoutesWithPublicIp']),
      importCustomRoutes:
          Input.asOptionalInput<bool>(map['importCustomRoutes']),
      importCustomRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['importCustomRoutesWithPublicIp']),
      name: Input.asOptionalInput<String>(map['name']),
      peerNetwork: Input.asInput<String>(map['peerNetwork']),
      peerNetworkType: Input.asInput<String>(map['peerNetworkType']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareEngineNetwork: Input.asInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
