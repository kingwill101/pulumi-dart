// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response.dart';
import 'cluster_upgrade_upgrade_status_response.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponse {
  /// Number of GKE clusters in each status code.
  final Map<String, String> stats;

  /// Status of the upgrade.
  final ClusterUpgradeUpgradeStatusResponse status;

  /// Which upgrade to track the state.
  final ClusterUpgradeGKEUpgradeResponse upgrade;

  ClusterUpgradeGKEUpgradeStateResponse({
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

  factory ClusterUpgradeGKEUpgradeStateResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponse(
      stats: (map['stats'] as Map).cast<String, String>(),
      status: ClusterUpgradeUpgradeStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponse.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
