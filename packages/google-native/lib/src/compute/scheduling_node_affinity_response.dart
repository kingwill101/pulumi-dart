// ignore_for_file: unused_element, unnecessary_cast

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinityResponse {
  /// Corresponds to the label key of Node resource.
  final String key;

  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final String operator;

  /// Corresponds to the label values of Node resource.
  final List<String> values;

  /// Creates a new [SchedulingNodeAffinityResponse].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  SchedulingNodeAffinityResponse({
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

  factory SchedulingNodeAffinityResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityResponse(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
