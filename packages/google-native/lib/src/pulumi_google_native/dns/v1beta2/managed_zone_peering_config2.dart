// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network2.dart';

class ManagedZonePeeringConfig2 {
  final String? kind;

  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetwork2? targetNetwork;

  ManagedZonePeeringConfig2({
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

  factory ManagedZonePeeringConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNetwork: map['targetNetwork'] == null
          ? null
          : ManagedZonePeeringConfigTargetNetwork2.fromMap(
              (map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
