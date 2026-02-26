// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network_response2.dart';

class ManagedZonePeeringConfigResponse2 {
  final String kind;

  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetworkResponse2 targetNetwork;

  ManagedZonePeeringConfigResponse2({
    required this.kind,
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNetwork'] = targetNetwork.toMap();
    return map;
  }

  factory ManagedZonePeeringConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigResponse2(
      kind: map['kind'] as String,
      targetNetwork: ManagedZonePeeringConfigTargetNetworkResponse2.fromMap(
          (map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
