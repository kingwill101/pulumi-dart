// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_scheduler_config_node_resources_fit_scoring_strategy_constraint_resource_name.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_scheduler_config_node_resources_fit_scoring_strategy_constraint_resource_weight.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResource {
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName>> names;
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight>> weights;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResource].
  /// [names] Required.
  /// [weights] Required.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResource({
    required this.names,
    required this.weights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName>, List<Map<String, dynamic>>>(names, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weights': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight>, List<Map<String, dynamic>>>(weights, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResource.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResource(
      names: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName>(map['names']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName.fromMap((value as Map).cast<String, dynamic>()))),
      weights: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight>(map['weights']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
