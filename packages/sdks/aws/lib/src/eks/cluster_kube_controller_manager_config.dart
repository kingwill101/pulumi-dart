// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';

class ClusterKubeControllerManagerConfig {
  /// Configuration block for the horizontal pod autoscaler controller. Detailed below.
  ///
  /// &gt; **NOTE:** The `horizontalPodAutoscalerControllerConfig` requires a Provisioned Control Plane scaling tier (e.g., `tier-xl` or higher). It cannot be configured on clusters using the `standard` tier.
  final pulumi.Input<ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig?>? horizontalPodAutoscalerControllerConfig;

  /// Creates a new [ClusterKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfig] Configuration block for the horizontal pod autoscaler controller. Detailed below.
  const ClusterKubeControllerManagerConfig({
    this.horizontalPodAutoscalerControllerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(horizontalPodAutoscalerControllerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfig: (() { final guardedValue = map['horizontalPodAutoscalerControllerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
