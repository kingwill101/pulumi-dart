// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_upgrade_status_response_gkehub_v1alpha.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha {
  /// Number of GKE clusters in each status code.
  final Map<String, String> stats;
  /// Status of the upgrade.
  final ClusterUpgradeUpgradeStatusResponseGkehubV1alpha status;
  /// Which upgrade to track the state.
  final ClusterUpgradeGKEUpgradeResponseGkehubV1alpha upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha].
  /// [stats] Number of GKE clusters in each status code.
  /// [status] Status of the upgrade.
  /// [upgrade] Which upgrade to track the state.
  ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha({
    required this.stats,
    required this.status,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stats': stats,
      'status': status.toMap(),
      'upgrade': upgrade.toMap(),
    };
  }

  factory ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponseGkehubV1alpha(
      stats: (map['stats'] as Map).cast<String, String>(),
      status: ClusterUpgradeUpgradeStatusResponseGkehubV1alpha.fromMap((map['status'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponseGkehubV1alpha.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

