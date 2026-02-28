// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network.dart';

class ManagedZonePeeringConfig {
  /// The network with which to peer.
  /// Structure is documented below.
  final ManagedZonePeeringConfigTargetNetwork targetNetwork;

  /// Creates a new [ManagedZonePeeringConfig].
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfig({
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetNetwork'] = targetNetwork.toMap();
    return map;
  }

  factory ManagedZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig(
      targetNetwork: ManagedZonePeeringConfigTargetNetwork.fromMap(
          (map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
