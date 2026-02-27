// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_feature_state_response_gkehub_v1alpha.dart';

/// **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetStateResponseGkehubV1alpha {
  /// This fleets whose upstream_fleets contain the current fleet. The fleet name should be either fleet project number or id.
  final List<String> downstreamFleets;

  /// Feature state for GKE clusters.
  final ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha gkeState;

  /// A list of memberships ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel. The membership resource is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  final Map<String, String> ignored;

  ClusterUpgradeFleetStateResponseGkehubV1alpha({
    required this.downstreamFleets,
    required this.gkeState,
    required this.ignored,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['downstreamFleets'] = downstreamFleets;
    map['gkeState'] = gkeState.toMap();
    map['ignored'] = ignored;
    return map;
  }

  factory ClusterUpgradeFleetStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeFleetStateResponseGkehubV1alpha(
      downstreamFleets: (map['downstreamFleets'] as List).cast<String>(),
      gkeState:
          ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1alpha.fromMap(
              (map['gkeState'] as Map).cast<String, dynamic>()),
      ignored: (map['ignored'] as Map).cast<String, String>(),
    );
  }
}
