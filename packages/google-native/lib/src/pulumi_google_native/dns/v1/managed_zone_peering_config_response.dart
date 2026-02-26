// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network_response.dart';

class ManagedZonePeeringConfigResponse {
  final String kind;

  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetworkResponse targetNetwork;

  ManagedZonePeeringConfigResponse({
    required this.kind,
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNetwork'] = targetNetwork.toMap();
    return map;
  }

  factory ManagedZonePeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigResponse(
      kind: map['kind'] as String,
      targetNetwork: ManagedZonePeeringConfigTargetNetworkResponse.fromMap(
          (map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
