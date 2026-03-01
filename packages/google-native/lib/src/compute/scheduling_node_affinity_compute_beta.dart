// ignore_for_file: unused_element, unnecessary_cast

import 'scheduling_node_affinity_operator_compute_beta.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinityComputeBeta {
  /// Corresponds to the label key of Node resource.
  final String? key;

  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final SchedulingNodeAffinityOperatorComputeBeta? operator;

  /// Corresponds to the label values of Node resource.
  final List<String>? values;

  /// Creates a new [SchedulingNodeAffinityComputeBeta].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  SchedulingNodeAffinityComputeBeta({this.key, this.operator, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator == null ? null : operator!.value,
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinityComputeBeta.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityComputeBeta(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null
          ? null
          : SchedulingNodeAffinityOperatorComputeBeta.fromValue(
              map['operator'] as String,
            ),
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
