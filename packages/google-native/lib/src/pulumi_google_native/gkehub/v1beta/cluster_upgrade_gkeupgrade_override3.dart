// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade3.dart';
import 'cluster_upgrade_post_conditions3.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverride3 {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditions3 postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgrade3 upgrade;

  ClusterUpgradeGKEUpgradeOverride3({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverride3.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverride3(
      postConditions: ClusterUpgradePostConditions3.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgrade3.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
