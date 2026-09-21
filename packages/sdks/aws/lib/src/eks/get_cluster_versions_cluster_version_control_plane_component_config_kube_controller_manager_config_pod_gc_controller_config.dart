// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_pod_gc_controller_config_terminated_pod_gc_threshold.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig {
  /// Terminated pod GC threshold configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>> terminatedPodGcThresholds;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig].
  /// [terminatedPodGcThresholds] Terminated pod GC threshold configuration with default value and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig({
    required this.terminatedPodGcThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminatedPodGcThresholds': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>, List<Map<String, dynamic>>>(terminatedPodGcThresholds, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfig(
      terminatedPodGcThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold>(map['terminatedPodGcThresholds']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
