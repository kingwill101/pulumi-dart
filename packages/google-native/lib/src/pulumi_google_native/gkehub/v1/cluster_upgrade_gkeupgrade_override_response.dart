// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response.dart';
import 'cluster_upgrade_post_conditions_response.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponse {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsResponse postConditions;

  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeResponse upgrade;

  ClusterUpgradeGKEUpgradeOverrideResponse({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponse(
      postConditions: ClusterUpgradePostConditionsResponse.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
