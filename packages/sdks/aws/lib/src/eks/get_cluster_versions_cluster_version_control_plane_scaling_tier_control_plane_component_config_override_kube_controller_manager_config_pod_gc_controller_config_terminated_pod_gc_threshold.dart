// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_controller_manager_config_pod_gc_controller_config_terminated_pod_gc_threshold_constraint.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<int> defaultValue;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValue] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold({
    required this.constraints,
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': defaultValue,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValue: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['defaultValue'])),
    );
  }
}
