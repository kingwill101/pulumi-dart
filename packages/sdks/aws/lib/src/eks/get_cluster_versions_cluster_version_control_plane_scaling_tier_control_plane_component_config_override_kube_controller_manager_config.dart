// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_controller_manager_config_pod_gc_controller_config.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig {
  /// HPA controller configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>> horizontalPodAutoscalerControllerConfigs;
  /// Pod garbage collection controller configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig>> podGcControllerConfigs;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfigs] HPA controller configuration defaults and constraints.
  /// [podGcControllerConfigs] Pod garbage collection controller configuration defaults and constraints.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig({
    required this.horizontalPodAutoscalerControllerConfigs,
    required this.podGcControllerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>, List<Map<String, dynamic>>>(horizontalPodAutoscalerControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podGcControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig>, List<Map<String, dynamic>>>(podGcControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>(map['horizontalPodAutoscalerControllerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podGcControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig>(map['podGcControllerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfigPodGcControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
