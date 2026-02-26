// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinityResponse2 {
  /// Key for NodeAffinity.
  final String key;

  /// Operator for NodeAffinity.
  final String operator;

  /// Values for NodeAffinity.
  final List<String> values;

  NodeAffinityResponse2({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['operator'] = operator;
    map['values'] = values;
    return map;
  }

  factory NodeAffinityResponse2.fromMap(Map<String, dynamic> map) {
    return NodeAffinityResponse2(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
