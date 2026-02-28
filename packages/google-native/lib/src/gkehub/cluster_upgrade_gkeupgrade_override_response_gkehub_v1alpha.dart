// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1alpha.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsResponseGkehubV1alpha postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeResponseGkehubV1alpha upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha].
  /// [postConditions] Post conditions to override for the specified upgrade (name + version). Required.
  /// [upgrade] Which upgrade to override. Required.
  ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha(
      postConditions: ClusterUpgradePostConditionsResponseGkehubV1alpha.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponseGkehubV1alpha.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
