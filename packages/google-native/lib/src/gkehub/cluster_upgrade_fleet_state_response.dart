// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_feature_state_response.dart';

/// **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetStateResponse {
  /// This fleets whose upstream_fleets contain the current fleet. The fleet name should be either fleet project number or id.
  final List<String> downstreamFleets;

  /// Feature state for GKE clusters.
  final ClusterUpgradeGKEUpgradeFeatureStateResponse gkeState;

  /// A list of memberships ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel. The membership resource is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  final Map<String, String> ignored;

  /// Creates a new [ClusterUpgradeFleetStateResponse].
  /// [downstreamFleets] This fleets whose upstream_fleets contain the current fleet. The fleet name should be either fleet project number or id.
  /// [gkeState] Feature state for GKE clusters.
  /// [ignored] A list of memberships ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel. The membership resource is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  ClusterUpgradeFleetStateResponse({
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

  factory ClusterUpgradeFleetStateResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetStateResponse(
      downstreamFleets: (map['downstreamFleets'] as List).cast<String>(),
      gkeState: ClusterUpgradeGKEUpgradeFeatureStateResponse.fromMap(
          (map['gkeState'] as Map).cast<String, dynamic>()),
      ignored: (map['ignored'] as Map).cast<String, String>(),
    );
  }
}
