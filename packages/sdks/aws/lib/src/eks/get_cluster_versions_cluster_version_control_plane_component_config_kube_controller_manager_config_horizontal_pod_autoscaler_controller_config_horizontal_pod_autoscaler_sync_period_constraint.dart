// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint {
  /// The maximum allowed duration.
  final pulumi.Input<String> max;
  /// The minimum allowed duration.
  final pulumi.Input<String> min;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint].
  /// [max] The maximum allowed duration.
  /// [min] The minimum allowed duration.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfigHorizontalPodAutoscalerSyncPeriodConstraint(
      max: pulumi.Input.fromValue(map['max'] as String),
      min: pulumi.Input.fromValue(map['min'] as String),
    );
  }
}
