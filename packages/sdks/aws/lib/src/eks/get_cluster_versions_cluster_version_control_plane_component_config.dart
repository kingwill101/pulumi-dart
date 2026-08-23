// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_scheduler_config.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfig {
  /// Kubernetes API server configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig>> kubeApiServerConfigs;
  /// Kubernetes controller manager configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig>> kubeControllerManagerConfigs;
  /// Kubernetes scheduler configuration defaults and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig>> kubeSchedulerConfigs;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfig].
  /// [kubeApiServerConfigs] Kubernetes API server configuration defaults and constraints.
  /// [kubeControllerManagerConfigs] Kubernetes controller manager configuration defaults and constraints.
  /// [kubeSchedulerConfigs] Kubernetes scheduler configuration defaults and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfig({
    required this.kubeApiServerConfigs,
    required this.kubeControllerManagerConfigs,
    required this.kubeSchedulerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeApiServerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig>, List<Map<String, dynamic>>>(kubeApiServerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeControllerManagerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig>, List<Map<String, dynamic>>>(kubeControllerManagerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeSchedulerConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig>, List<Map<String, dynamic>>>(kubeSchedulerConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfig(
      kubeApiServerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig>(map['kubeApiServerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kubeControllerManagerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig>(map['kubeControllerManagerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      kubeSchedulerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig>(map['kubeSchedulerConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
