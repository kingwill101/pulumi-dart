// ignore_for_file: unused_element, unnecessary_cast

import '../rollout_sequence_stage_cluster_selector/rollout_sequence_stage_cluster_selector.dart';

class RolloutSequenceStage {
  /// Filter to select a subset of clusters from the specified Fleet projects.
  /// If not specified, all clusters in the fleet projects are selected.
  /// Structure is documented below.
  final RolloutSequenceStageClusterSelector? clusterSelector;

  /// List of Fleet projects to select the clusters from.
  /// Expected format: projects/{project}
  final List<String> fleetProjects;

  /// Soak time after upgrading all the clusters in the stage, specified in seconds.
  final String? soakDuration;

  RolloutSequenceStage({
    this.clusterSelector,
    required this.fleetProjects,
    this.soakDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterSelectorValue = clusterSelector;
    if (clusterSelectorValue != null) {
      map['clusterSelector'] = clusterSelectorValue.toMap();
    }
    map['fleetProjects'] = fleetProjects;
    final soakDurationValue = soakDuration;
    if (soakDurationValue != null) {
      map['soakDuration'] = soakDurationValue;
    }
    return map;
  }

  factory RolloutSequenceStage.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceStage(
      clusterSelector: map['clusterSelector'] == null
          ? null
          : RolloutSequenceStageClusterSelector.fromMap(
              (map['clusterSelector'] as Map).cast<String, dynamic>()),
      fleetProjects: (map['fleetProjects'] as List).cast<String>(),
      soakDuration:
          map['soakDuration'] == null ? null : map['soakDuration'] as String,
    );
  }
}
