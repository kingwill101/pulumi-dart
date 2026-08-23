// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_scheduler_config_node_resources_fit_scoring_strategy.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit {
  /// Allowed values for the strategy type.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategy>> scoringStrategies;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit].
  /// [scoringStrategies] Allowed values for the strategy type.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit({
    required this.scoringStrategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scoringStrategies': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategy>, List<Map<String, dynamic>>>(scoringStrategies, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit(
      scoringStrategies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategy>(map['scoringStrategies']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
