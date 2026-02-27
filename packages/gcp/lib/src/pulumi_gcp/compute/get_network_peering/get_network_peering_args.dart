// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkPeering.
class GetNetworkPeeringArgs {
  /// Name of the peering.
  final pulumi.Input<String> name;

  /// The primary network of the peering.
  final pulumi.Input<String> network;

  GetNetworkPeeringArgs({
    required this.name,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['network'] = network;
    return map;
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
    );
  }
}
