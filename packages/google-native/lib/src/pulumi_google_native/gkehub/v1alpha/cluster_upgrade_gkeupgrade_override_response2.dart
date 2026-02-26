// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response2.dart';
import 'cluster_upgrade_post_conditions_response2.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponse2 {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsResponse2 postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeResponse2 upgrade;

  ClusterUpgradeGKEUpgradeOverrideResponse2({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponse2.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponse2(
      postConditions: ClusterUpgradePostConditionsResponse2.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse2.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
