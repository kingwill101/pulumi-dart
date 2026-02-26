// ignore_for_file: unused_element, unnecessary_cast

import 'scheduling_node_affinity_operator3.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinity3 {
  /// Corresponds to the label key of Node resource.
  final String? key;

  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final SchedulingNodeAffinityOperator3? operator;

  /// Corresponds to the label values of Node resource.
  final List<String>? values;

  SchedulingNodeAffinity3({
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

  factory SchedulingNodeAffinity3.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinity3(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : SchedulingNodeAffinityOperator3.fromValue(
              map['operator'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
