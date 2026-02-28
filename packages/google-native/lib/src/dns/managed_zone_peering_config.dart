// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_peering_config_target_network.dart';

class ManagedZonePeeringConfig {
  final String? kind;
  /// The network with which to peer.
  final ManagedZonePeeringConfigTargetNetwork? targetNetwork;

  /// Creates a new [ManagedZonePeeringConfig].
  /// [kind] Optional.
  /// [targetNetwork] The network with which to peer.
  ManagedZonePeeringConfig({
    this.kind,
    this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNetwork': ?targetNetwork == null ? null : targetNetwork!.toMap(),
    };
  }

  factory ManagedZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNetwork: map['targetNetwork'] == null ? null : ManagedZonePeeringConfigTargetNetwork.fromMap((map['targetNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

