// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config_horizontal_pod_autoscaler_sync_period_constraint.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<String> defaultValue;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValue] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod({
    required this.constraints,
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': defaultValue,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriod(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
    );
  }
}
