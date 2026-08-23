// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig {
  /// The interval between each sync of the horizontal pod autoscaler.
  final pulumi.Input<String> horizontalPodAutoscalerSyncPeriod;

  /// Creates a new [GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig].
  /// [horizontalPodAutoscalerSyncPeriod] The interval between each sync of the horizontal pod autoscaler.
  const GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig({
    required this.horizontalPodAutoscalerSyncPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerSyncPeriod': horizontalPodAutoscalerSyncPeriod,
    };
  }

  factory GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig(
      horizontalPodAutoscalerSyncPeriod: pulumi.Input.fromValue(map['horizontalPodAutoscalerSyncPeriod'] as String),
    );
  }
}
