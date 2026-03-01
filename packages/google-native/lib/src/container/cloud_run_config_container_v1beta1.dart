// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_load_balancer_type_container_v1beta1.dart';

/// Configuration options for the Cloud Run feature.
class CloudRunConfigContainerV1beta1 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool? disabled;

  /// Which load balancer type is installed for Cloud Run.
  final CloudRunConfigLoadBalancerTypeContainerV1beta1? loadBalancerType;

  /// Creates a new [CloudRunConfigContainerV1beta1].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  CloudRunConfigContainerV1beta1({this.disabled, this.loadBalancerType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'loadBalancerType': ?loadBalancerType == null
          ? null
          : loadBalancerType!.value,
    };
  }

  factory CloudRunConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigContainerV1beta1(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] == null
          ? null
          : CloudRunConfigLoadBalancerTypeContainerV1beta1.fromValue(
              map['loadBalancerType'] as String,
            ),
    );
  }
}
