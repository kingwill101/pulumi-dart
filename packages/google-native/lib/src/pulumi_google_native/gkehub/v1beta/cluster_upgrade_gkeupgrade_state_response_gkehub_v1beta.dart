// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response_gkehub_v1beta.dart';
import 'cluster_upgrade_upgrade_status_response_gkehub_v1beta.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta {
  /// Number of GKE clusters in each status code.
  final Map<String, String> stats;

  /// Status of the upgrade.
  final ClusterUpgradeUpgradeStatusResponseGkehubV1beta status;

  /// Which upgrade to track the state.
  final ClusterUpgradeGKEUpgradeResponseGkehubV1beta upgrade;

  ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta({
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

  factory ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta(
      stats: (map['stats'] as Map).cast<String, String>(),
      status: ClusterUpgradeUpgradeStatusResponseGkehubV1beta.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponseGkehubV1beta.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
