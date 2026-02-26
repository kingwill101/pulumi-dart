// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response3.dart';
import 'cluster_upgrade_post_conditions_response3.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponse3 {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsResponse3 postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeResponse3 upgrade;

  ClusterUpgradeGKEUpgradeOverrideResponse3({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponse3.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponse3(
      postConditions: ClusterUpgradePostConditionsResponse3.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse3.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
