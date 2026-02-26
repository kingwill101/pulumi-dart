// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade.dart';
import 'cluster_upgrade_post_conditions.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverride {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditions postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgrade upgrade;

  ClusterUpgradeGKEUpgradeOverride({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverride.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverride(
      postConditions: ClusterUpgradePostConditions.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgrade.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
