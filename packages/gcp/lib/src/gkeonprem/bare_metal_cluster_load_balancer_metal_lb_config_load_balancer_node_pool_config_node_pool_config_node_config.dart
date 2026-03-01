// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig {
  /// The map of Kubernetes labels (key/value pairs) to be applied to
  /// each node. These will added in addition to any default label(s)
  /// that Kubernetes may apply to the node. In case of conflict in
  /// label keys, the applied set may differ depending on the Kubernetes
  /// version -- it's best to assume the behavior is undefined and
  /// conflicts should be avoided. For more information, including usage
  /// and the valid values, see:
  /// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
  /// An object containing a list of "key": value pairs.
  /// For example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// The default IPv4 address for SSH access and Kubernetes node.
  /// Example: 192.168.0.1
  final String? nodeIp;

  /// Creates a new [BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig].
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to
  /// [nodeIp] The default IPv4 address for SSH access and Kubernetes node.
  BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig({
    this.labels,
    this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeIp': ?nodeIp,
    };
  }

  factory BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodeIp: map['nodeIp'] == null ? null : map['nodeIp'] as String,
    );
  }
}

