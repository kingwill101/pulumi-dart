// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_load_balancer_type2.dart';

/// Configuration options for the Cloud Run feature.
class CloudRunConfig3 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool? disabled;

  /// Which load balancer type is installed for Cloud Run.
  final CloudRunConfigLoadBalancerType2? loadBalancerType;

  CloudRunConfig3({
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

  factory CloudRunConfig3.fromMap(Map<String, dynamic> map) {
    return CloudRunConfig3(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] == null
          ? null
          : CloudRunConfigLoadBalancerType2.fromValue(
              map['loadBalancerType'] as String),
    );
  }
}
