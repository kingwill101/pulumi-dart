// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig {
  /// The interval between each sync of the horizontal pod autoscaler. Must be a single-unit duration (e.g., `10s`, `15s`). Valid range: `10s` to `15s`. Default is `15s`.
  final pulumi.Input<String>? horizontalPodAutoscalerSyncPeriod;

  /// Creates a new [ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig].
  /// [horizontalPodAutoscalerSyncPeriod] The interval between each sync of the horizontal pod autoscaler. Must be a single-unit duration (e.g., `10s`, `15s`). Valid range: `10s` to `15s`. Default is `15s`.
  const ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig({
    this.horizontalPodAutoscalerSyncPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerSyncPeriod': ?horizontalPodAutoscalerSyncPeriod,
    };
  }

  factory ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig(
      horizontalPodAutoscalerSyncPeriod: (() { final guardedValue = map['horizontalPodAutoscalerSyncPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
