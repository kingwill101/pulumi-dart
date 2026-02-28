// ignore_for_file: unused_element, unnecessary_cast

import 'scheduling_node_affinity_operator.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinity {
  /// Corresponds to the label key of Node resource.
  final String? key;

  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final SchedulingNodeAffinityOperator? operator;

  /// Corresponds to the label values of Node resource.
  final List<String>? values;

  /// Creates a new [SchedulingNodeAffinity].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  SchedulingNodeAffinity({
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

  factory SchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinity(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : SchedulingNodeAffinityOperator.fromValue(map['operator'] as String),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
