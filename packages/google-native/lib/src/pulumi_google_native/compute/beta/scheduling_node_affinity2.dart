// ignore_for_file: unused_element, unnecessary_cast

import 'scheduling_node_affinity_operator2.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinity2 {
  /// Corresponds to the label key of Node resource.
  final String? key;

  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final SchedulingNodeAffinityOperator2? operator;

  /// Corresponds to the label values of Node resource.
  final List<String>? values;

  SchedulingNodeAffinity2({
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

  factory SchedulingNodeAffinity2.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinity2(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : SchedulingNodeAffinityOperator2.fromValue(
              map['operator'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
