// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config_horizontal_pod_autoscaler_sync_period.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig {
  /// HPA sync period configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod>> horizontalPodAutoscalerSyncPeriods;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig].
  /// [horizontalPodAutoscalerSyncPeriods] HPA sync period configuration with default value and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig({
    required this.horizontalPodAutoscalerSyncPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerSyncPeriods': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod>, List<Map<String, dynamic>>>(horizontalPodAutoscalerSyncPeriods, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig(
      horizontalPodAutoscalerSyncPeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod>(map['horizontalPodAutoscalerSyncPeriods']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
