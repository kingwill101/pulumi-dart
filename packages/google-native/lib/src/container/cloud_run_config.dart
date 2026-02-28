// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_load_balancer_type.dart';

/// Configuration options for the Cloud Run feature.
class CloudRunConfig {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool? disabled;

  /// Which load balancer type is installed for Cloud Run.
  final CloudRunConfigLoadBalancerType? loadBalancerType;

  /// Creates a new [CloudRunConfig].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  CloudRunConfig({
    this.disabled,
    this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final loadBalancerTypeValue = loadBalancerType;
    if (loadBalancerTypeValue != null) {
      map['loadBalancerType'] = loadBalancerTypeValue.value;
    }
    return map;
  }

  factory CloudRunConfig.fromMap(Map<String, dynamic> map) {
    return CloudRunConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] == null
          ? null
          : CloudRunConfigLoadBalancerType.fromValue(
              map['loadBalancerType'] as String),
    );
  }
}
