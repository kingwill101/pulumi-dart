// ignore_for_file: unused_element, unnecessary_cast

import 'scheduling_node_affinity_operator5.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinity5 {
  /// The label key of Node resource to reference.
  final String? key;

  /// The operator to use for the node resources specified in the `values` parameter.
  final SchedulingNodeAffinityOperator5? operator;

  /// Corresponds to the label values of Node resource.
  final List<String>? values;

  SchedulingNodeAffinity5({
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

  factory SchedulingNodeAffinity5.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinity5(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : SchedulingNodeAffinityOperator5.fromValue(
              map['operator'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
