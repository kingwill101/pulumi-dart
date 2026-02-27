// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the Cloud Run feature.
class CloudRunConfigResponseContainerV1 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool disabled;

  /// Which load balancer type is installed for Cloud Run.
  final String loadBalancerType;

  CloudRunConfigResponseContainerV1({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['loadBalancerType'] = loadBalancerType;
    return map;
  }

  factory CloudRunConfigResponseContainerV1.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigResponseContainerV1(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
