// ignore_for_file: unused_element, unnecessary_cast

import 'node_affinity_operator_container_v1beta1.dart';

/// Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinityContainerV1beta1 {
  /// Key for NodeAffinity.
  final String? key;

  /// Operator for NodeAffinity.
  final NodeAffinityOperatorContainerV1beta1? operator;

  /// Values for NodeAffinity.
  final List<String>? values;

  NodeAffinityContainerV1beta1({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue.value;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory NodeAffinityContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeAffinityContainerV1beta1(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : NodeAffinityOperatorContainerV1beta1.fromValue(
              map['operator'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
