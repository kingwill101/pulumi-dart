// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_controller_manager_config_horizontal_pod_autoscaler_controller_config.dart';
import 'get_cluster_kube_controller_manager_config_pod_gc_controller_config.dart';

class GetClusterKubeControllerManagerConfig {
  /// Configuration for the horizontal pod autoscaler controller.
  final pulumi.Input<List<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>> horizontalPodAutoscalerControllerConfigs;
  /// Configuration for the pod garbage collection controller.
  final pulumi.Input<List<GetClusterKubeControllerManagerConfigPodGcControllerConfig>> podGcControllerConfigs;

  /// Creates a new [GetClusterKubeControllerManagerConfig].
  /// [horizontalPodAutoscalerControllerConfigs] Configuration for the horizontal pod autoscaler controller.
  /// [podGcControllerConfigs] Configuration for the pod garbage collection controller.
  const GetClusterKubeControllerManagerConfig({
    required this.horizontalPodAutoscalerControllerConfigs,
    required this.podGcControllerConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'horizontalPodAutoscalerControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>, List<Map<String, dynamic>>>(horizontalPodAutoscalerControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podGcControllerConfigs': pulumi.Input.mapInputValue<List<GetClusterKubeControllerManagerConfigPodGcControllerConfig>, List<Map<String, dynamic>>>(podGcControllerConfigs, (value) => pulumi.Input.encodeList<GetClusterKubeControllerManagerConfigPodGcControllerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterKubeControllerManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeControllerManagerConfig(
      horizontalPodAutoscalerControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig>(map['horizontalPodAutoscalerControllerConfigs']!, (value) => GetClusterKubeControllerManagerConfigHorizontalPodAutoscalerControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      podGcControllerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeControllerManagerConfigPodGcControllerConfig>(map['podGcControllerConfigs']!, (value) => GetClusterKubeControllerManagerConfigPodGcControllerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
