// ignore_for_file: unused_element, unnecessary_cast

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinityResponse {
  /// The label key of Node resource to reference.
  final String key;

  /// The operator to use for the node resources specified in the `values` parameter.
  final String operator;

  /// Corresponds to the label values of Node resource.
  final List<String> values;

  /// Creates a new [SchedulingNodeAffinityResponse].
  /// [key] The label key of Node resource to reference.
  /// [operator] The operator to use for the node resources specified in the `values` parameter.
  /// [values] Corresponds to the label values of Node resource.
  SchedulingNodeAffinityResponse({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory SchedulingNodeAffinityResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityResponse(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
