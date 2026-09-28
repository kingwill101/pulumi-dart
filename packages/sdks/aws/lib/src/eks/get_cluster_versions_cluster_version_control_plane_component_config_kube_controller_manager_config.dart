// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_pod_gc_controller_config.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig {
  /// HPA controller configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>> horizontalPodAutoscalerControllerConfigs;
  /// Pod garbage collection controller configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig>> podGcControllerConfigs;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfigs] HPA controller configuration defaults and constraints.
  /// [podGcControllerConfigs] Pod garbage collection controller configuration defaults and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig({
    required this.horizontalPodAutoscalerControllerConfigs,
    required this.podGcControllerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>, List<Map<String, dynamic>>>(horizontalPodAutoscalerControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podGcControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig>, List<Map<String, dynamic>>>(podGcControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>(map['horizontalPodAutoscalerControllerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podGcControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig>(map['podGcControllerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
