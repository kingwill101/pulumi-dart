// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkPeering.
class NetworkPeeringVmwareengineArgs {
  /// User-provided description for this network peering.
  final pulumi.Input<String>? description;

  /// True if custom routes are exported to the peered network; false otherwise.
  final pulumi.Input<bool>? exportCustomRoutes;

  /// True if all subnet routes with a public IP address range are exported; false otherwise.
  final pulumi.Input<bool>? exportCustomRoutesWithPublicIp;

  /// True if custom routes are imported from the peered network; false otherwise.
  final pulumi.Input<bool>? importCustomRoutes;

  /// True if custom routes are imported from the peered network; false otherwise.
  final pulumi.Input<bool>? importCustomRoutesWithPublicIp;

  /// The ID of the Network Peering.
  final pulumi.Input<String>? name;

  /// The relative resource name of the network to peer with a standard VMware Engine network.
  /// The provided network can be a consumer VPC network or another standard VMware Engine network.
  final pulumi.Input<String> peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  final pulumi.Input<String> peerNetworkType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final pulumi.Input<String> vmwareEngineNetwork;

  NetworkPeeringVmwareengineArgs({
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

  factory NetworkPeeringVmwareengineArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringVmwareengineArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      exportCustomRoutes:
          pulumi.Input.asOptionalInput<bool>(map['exportCustomRoutes']),
      exportCustomRoutesWithPublicIp: pulumi.Input.asOptionalInput<bool>(
          map['exportCustomRoutesWithPublicIp']),
      importCustomRoutes:
          pulumi.Input.asOptionalInput<bool>(map['importCustomRoutes']),
      importCustomRoutesWithPublicIp: pulumi.Input.asOptionalInput<bool>(
          map['importCustomRoutesWithPublicIp']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      peerNetwork: pulumi.Input.asInput<String>(map['peerNetwork']),
      peerNetworkType: pulumi.Input.asInput<String>(map['peerNetworkType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vmwareEngineNetwork:
          pulumi.Input.asInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
