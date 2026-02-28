// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_peering_get_network_peering_args_doc}
/// Arguments for getNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_peering_get_network_peering_args_doc}
class GetNetworkPeeringArgs {
  /// Name of the peering.
  final pulumi.Input<String> name;

  /// The primary network of the peering.
  final pulumi.Input<String> network;

  /// Creates a new [GetNetworkPeeringArgs].
  /// [name] Name of the peering.
  /// [network] The primary network of the peering.
  GetNetworkPeeringArgs({
    required String name,
    required String network,
  })  : name = pulumi.Input.asInput<String>(name),
        network = pulumi.Input.asInput<String>(network);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['network'] = network;
    return map;
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      name: map['name'] as String,
      network: map['network'] as String,
    );
  }
}
