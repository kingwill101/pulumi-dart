// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_gkehub_v1alpha.dart';
import 'cluster_upgrade_post_conditions_gkehub_v1alpha.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsGkehubV1alpha postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeGkehubV1alpha upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha].
  /// [postConditions] Post conditions to override for the specified upgrade (name + version). Required.
  /// [upgrade] Which upgrade to override. Required.
  ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha(
      postConditions: ClusterUpgradePostConditionsGkehubV1alpha.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeGkehubV1alpha.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
