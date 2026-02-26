// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity {
  /// (Optional)
  final String? key;

  /// Possible values are: `OPERATOR_UNSPECIFIED`, `IN`, `NOT_IN`.
  final String? operator;

  /// (Optional)
  final List<String>? values;

  RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity({
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
      map['operator'] = operatorValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesSchedulingNodeAffinity(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
