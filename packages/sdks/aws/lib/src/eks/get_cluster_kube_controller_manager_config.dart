// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';

class GetClusterKubeControllerManagerConfig {
  /// Configuration for the horizontal pod autoscaler controller.
  final pulumi.Input<List<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>> horizontalPodAutoscalerControllerConfigs;

  /// Creates a new [GetClusterKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfigs] Configuration for the horizontal pod autoscaler controller.
  const GetClusterKubeControllerManagerConfig({
    required this.horizontalPodAutoscalerControllerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>, List<Map<String, dynamic>>>(horizontalPodAutoscalerControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>(map['horizontalPodAutoscalerControllerConfigs']!, (value) => GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
