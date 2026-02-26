// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response3.dart';
import 'cluster_upgrade_upgrade_status_response3.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponse3 {
  /// Number of GKE clusters in each status code.
  final Map<String, String> stats;

  /// Status of the upgrade.
  final ClusterUpgradeUpgradeStatusResponse3 status;

  /// Which upgrade to track the state.
  final ClusterUpgradeGKEUpgradeResponse3 upgrade;

  ClusterUpgradeGKEUpgradeStateResponse3({
    required this.stats,
    required this.status,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stats'] = stats;
    map['status'] = status.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory ClusterUpgradeGKEUpgradeStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponse3(
      stats: (map['stats'] as Map).cast<String, String>(),
      status: ClusterUpgradeUpgradeStatusResponse3.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse3.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
