// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';
import 'cluster_kube_controller_manager_config_pod_gc_controller_config.dart';

class ClusterKubeControllerManagerConfig {
  /// Configuration block for the horizontal pod autoscaler controller. Detailed below.
  final pulumi.Input<ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig?>? horizontalPodAutoscalerControllerConfig;
  /// Configuration block for the pod garbage collection controller. Detailed below.
  ///
  /// &gt; **NOTE:** The `horizontalPodAutoscalerControllerConfig` requires a Provisioned Control Plane scaling tier (e.g., `tier-xl` or higher). It cannot be configured on clusters using the `standard` tier.
  final pulumi.Input<ClusterKubeControllerManagerConfigPodGcControllerConfig?>? podGcControllerConfig;

  /// Creates a new [ClusterKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfig] Configuration block for the horizontal pod autoscaler controller. Detailed below.
  /// [podGcControllerConfig] Configuration block for the pod garbage collection controller. Detailed below.
  const ClusterKubeControllerManagerConfig({
    this.horizontalPodAutoscalerControllerConfig,
    this.podGcControllerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(horizontalPodAutoscalerControllerConfig, (value) => value.toMap()),
      'podGcControllerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterKubeControllerManagerConfigPodGcControllerConfig, Map<String, dynamic>>(podGcControllerConfig, (value) => value.toMap()),
    };
  }

  factory ClusterKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfig: (() { final guardedValue = map['horizontalPodAutoscalerControllerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGcControllerConfig: (() { final guardedValue = map['podGcControllerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeControllerManagerConfigPodGcControllerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
