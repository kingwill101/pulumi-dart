// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
class HttpLoadBalancingResponse2 {
  /// Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.
  final bool disabled;

  HttpLoadBalancingResponse2({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory HttpLoadBalancingResponse2.fromMap(Map<String, dynamic> map) {
    return HttpLoadBalancingResponse2(
      disabled: map['disabled'] as bool,
    );
  }
}
