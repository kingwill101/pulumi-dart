// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Cloud Run feature.
class CloudRunConfigResponse3 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool disabled;

  /// Which load balancer type is installed for Cloud Run.
  final String loadBalancerType;

  CloudRunConfigResponse3({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['loadBalancerType'] = loadBalancerType;
    return map;
  }

  factory CloudRunConfigResponse3.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigResponse3(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
