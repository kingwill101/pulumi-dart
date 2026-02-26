// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network.dart';

class ManagedZonePeeringConfig {
  final String? kind;

  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetwork? targetNetwork;

  ManagedZonePeeringConfig({
    this.kind,
    this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final targetNetworkValue = targetNetwork;
    if (targetNetworkValue != null) {
      map['targetNetwork'] = targetNetworkValue.toMap();
    }
    return map;
  }

  factory ManagedZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNetwork: map['targetNetwork'] == null
          ? null
          : ManagedZonePeeringConfigTargetNetwork.fromMap(
              (map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
