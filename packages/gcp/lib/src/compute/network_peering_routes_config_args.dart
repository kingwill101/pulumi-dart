// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
/// The set of arguments for NetworkPeeringRoutesConfig.
/// {@endtemplate}
/// {@macro pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
class NetworkPeeringRoutesConfigArgs {
  /// Whether to export the custom routes to the peer network.
  final pulumi.Input<bool> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes to the peer network.
  final pulumi.Input<bool> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? importSubnetRoutesWithPublicIp;
  /// The name of the primary network for the peering.
  final pulumi.Input<String> network;
  /// Name of the peering.
  final pulumi.Input<String> peering;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NetworkPeeringRoutesConfigArgs].
  /// [exportCustomRoutes] Whether to export the custom routes to the peer network.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported.
  /// [importCustomRoutes] Whether to import the custom routes to the peer network.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported.
  /// [network] The name of the primary network for the peering.
  /// [peering] Name of the peering.
  /// [project] The ID of the project in which the resource belongs.
  NetworkPeeringRoutesConfigArgs({
    required bool exportCustomRoutes,
    bool? exportSubnetRoutesWithPublicIp,
    required bool importCustomRoutes,
    bool? importSubnetRoutesWithPublicIp,
    required String network,
    required String peering,
    String? project,
  }) :
      exportCustomRoutes = pulumi.Input.asInput<bool>(exportCustomRoutes),
      exportSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(exportSubnetRoutesWithPublicIp),
      importCustomRoutes = pulumi.Input.asInput<bool>(importCustomRoutes),
      importSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(importSubnetRoutesWithPublicIp),
      network = pulumi.Input.asInput<String>(network),
      peering = pulumi.Input.asInput<String>(peering),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportCustomRoutes': exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
      'importCustomRoutes': importCustomRoutes,
      'importSubnetRoutesWithPublicIp': ?importSubnetRoutesWithPublicIp,
      'network': network,
      'peering': peering,
      'project': ?project,
    };
  }

  factory NetworkPeeringRoutesConfigArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringRoutesConfigArgs(
      exportCustomRoutes: map['exportCustomRoutes'] as bool,
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] == null ? null : map['exportSubnetRoutesWithPublicIp'] as bool,
      importCustomRoutes: map['importCustomRoutes'] as bool,
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] == null ? null : map['importSubnetRoutesWithPublicIp'] as bool,
      network: map['network'] as String,
      peering: map['peering'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

