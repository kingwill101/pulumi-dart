// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_feature_state_response_gkehub_v1beta.dart';

/// **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetStateResponseGkehubV1beta {
  /// This fleets whose upstream_fleets contain the current fleet. The fleet name should be either fleet project number or id.
  final List<String> downstreamFleets;

  /// Feature state for GKE clusters.
  final ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta gkeState;

  /// A list of memberships ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel. The membership resource is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  final Map<String, String> ignored;

  /// Creates a new [ClusterUpgradeFleetStateResponseGkehubV1beta].
  /// [downstreamFleets] This fleets whose upstream_fleets contain the current fleet. The fleet name should be either fleet project number or id.
  /// [gkeState] Feature state for GKE clusters.
  /// [ignored] A list of memberships ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel. The membership resource is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  ClusterUpgradeFleetStateResponseGkehubV1beta({
    required this.downstreamFleets,
    required this.gkeState,
    required this.ignored,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downstreamFleets': downstreamFleets,
      'gkeState': gkeState.toMap(),
      'ignored': ignored,
    };
  }

  factory ClusterUpgradeFleetStateResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUpgradeFleetStateResponseGkehubV1beta(
      downstreamFleets: (map['downstreamFleets'] as List).cast<String>(),
      gkeState:
          ClusterUpgradeGKEUpgradeFeatureStateResponseGkehubV1beta.fromMap(
            (map['gkeState'] as Map).cast<String, dynamic>(),
          ),
      ignored: (map['ignored'] as Map).cast<String, String>(),
    );
  }
}
