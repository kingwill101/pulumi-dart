// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalNodeConfig lists machine addresses to access Nodes.
class BareMetalNodeConfig {
  /// The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;

  /// The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  final String? nodeIp;

  /// Creates a new [BareMetalNodeConfig].
  /// [labels] The labels assigned to this node. An object containing a list of key/value pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig are the set of labels that will be applied to the node. If there are any conflicts, the BareMetalNodeConfig labels take precedence. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeIp] The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1
  BareMetalNodeConfig({
    this.labels,
    this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nodeIpValue = nodeIp;
    if (nodeIpValue != null) {
      map['nodeIp'] = nodeIpValue;
    }
    return map;
  }

  factory BareMetalNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodeConfig(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      nodeIp: map['nodeIp'] == null ? null : map['nodeIp'] as String,
    );
  }
}
