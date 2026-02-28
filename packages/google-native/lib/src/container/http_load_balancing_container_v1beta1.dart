// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancingContainerV1beta1 {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  final bool? disabled;

  /// Creates a new [HttpLoadBalancingContainerV1beta1].
  /// [disabled] Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  HttpLoadBalancingContainerV1beta1({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory HttpLoadBalancingContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpLoadBalancingContainerV1beta1(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
