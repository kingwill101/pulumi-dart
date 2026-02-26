// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response2.dart';
import 'cluster_upgrade_upgrade_status_response2.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponse2 {
  /// Number of GKE clusters in each status code.
  final Map<String, String> stats;

  /// Status of the upgrade.
  final ClusterUpgradeUpgradeStatusResponse2 status;

  /// Which upgrade to track the state.
  final ClusterUpgradeGKEUpgradeResponse2 upgrade;

  ClusterUpgradeGKEUpgradeStateResponse2({
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

  factory ClusterUpgradeGKEUpgradeStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponse2(
      stats: (map['stats'] as Map).cast<String, String>(),
      status: ClusterUpgradeUpgradeStatusResponse2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse2.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
