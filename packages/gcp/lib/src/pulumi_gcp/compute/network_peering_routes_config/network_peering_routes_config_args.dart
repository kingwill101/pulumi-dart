// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkPeeringRoutesConfig.
class NetworkPeeringRoutesConfigArgs {
  /// Whether to export the custom routes to the peer network.
  final Input<bool> exportCustomRoutes;

  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  final Input<bool>? exportSubnetRoutesWithPublicIp;

  /// Whether to import the custom routes to the peer network.
  final Input<bool> importCustomRoutes;

  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  final Input<bool>? importSubnetRoutesWithPublicIp;

  /// The name of the primary network for the peering.
  final Input<String> network;

  /// Name of the peering.
  final Input<String> peering;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  NetworkPeeringRoutesConfigArgs({
    required this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    required this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    required this.network,
    required this.peering,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exportCustomRoutes'] = exportCustomRoutes;
    final exportSubnetRoutesWithPublicIpValue = exportSubnetRoutesWithPublicIp;
    if (exportSubnetRoutesWithPublicIpValue != null) {
      map['exportSubnetRoutesWithPublicIp'] =
          exportSubnetRoutesWithPublicIpValue;
    }
    map['importCustomRoutes'] = importCustomRoutes;
    final importSubnetRoutesWithPublicIpValue = importSubnetRoutesWithPublicIp;
    if (importSubnetRoutesWithPublicIpValue != null) {
      map['importSubnetRoutesWithPublicIp'] =
          importSubnetRoutesWithPublicIpValue;
    }
    map['network'] = network;
    map['peering'] = peering;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory NetworkPeeringRoutesConfigArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringRoutesConfigArgs(
      exportCustomRoutes: Input.asInput<bool>(map['exportCustomRoutes']),
      exportSubnetRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['exportSubnetRoutesWithPublicIp']),
      importCustomRoutes: Input.asInput<bool>(map['importCustomRoutes']),
      importSubnetRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['importSubnetRoutesWithPublicIp']),
      network: Input.asInput<String>(map['network']),
      peering: Input.asInput<String>(map['peering']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
