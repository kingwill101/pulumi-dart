// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_api_server_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_controller_manager_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_scheduler_config.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride {
  /// Kubernetes API server configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfig>> kubeApiServerConfigs;
  /// Kubernetes controller manager configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig>> kubeControllerManagerConfigs;
  /// Kubernetes scheduler configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfig>> kubeSchedulerConfigs;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride].
  /// [kubeApiServerConfigs] Kubernetes API server configuration defaults and constraints.
  /// [kubeControllerManagerConfigs] Kubernetes controller manager configuration defaults and constraints.
  /// [kubeSchedulerConfigs] Kubernetes scheduler configuration defaults and constraints.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride({
    required this.kubeApiServerConfigs,
    required this.kubeControllerManagerConfigs,
    required this.kubeSchedulerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeApiServerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfig>, List<Map<String, dynamic>>>(kubeApiServerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeControllerManagerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig>, List<Map<String, dynamic>>>(kubeControllerManagerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeSchedulerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfig>, List<Map<String, dynamic>>>(kubeSchedulerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride(
      kubeApiServerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfig>(map['kubeApiServerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kubeControllerManagerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig>(map['kubeControllerManagerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeControllerManagerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kubeSchedulerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfig>(map['kubeSchedulerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
