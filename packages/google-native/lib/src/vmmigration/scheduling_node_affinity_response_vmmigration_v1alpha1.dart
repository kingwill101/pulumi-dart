// ignore_for_file: unused_element, unnecessary_cast

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinityResponseVmmigrationV1alpha1 {
  /// The label key of Node resource to reference.
  final String key;

  /// The operator to use for the node resources specified in the `values` parameter.
  final String operator;

  /// Corresponds to the label values of Node resource.
  final List<String> values;

  /// Creates a new [SchedulingNodeAffinityResponseVmmigrationV1alpha1].
  /// [key] The label key of Node resource to reference.
  /// [operator] The operator to use for the node resources specified in the `values` parameter.
  /// [values] Corresponds to the label values of Node resource.
  SchedulingNodeAffinityResponseVmmigrationV1alpha1({
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

  factory SchedulingNodeAffinityResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SchedulingNodeAffinityResponseVmmigrationV1alpha1(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
