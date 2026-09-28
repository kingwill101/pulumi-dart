// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_controller_manager_config_pod_gc_controller_config_terminated_pod_gc_threshold.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig {
  /// Terminated pod GC threshold configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>> terminatedPodGcThresholds;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig].
  /// [terminatedPodGcThresholds] Terminated pod GC threshold configuration with default value and constraints.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig({
    required this.terminatedPodGcThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminatedPodGcThresholds': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>, List<Map<String, dynamic>>>(terminatedPodGcThresholds, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig(
      terminatedPodGcThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>(map['terminatedPodGcThresholds']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
