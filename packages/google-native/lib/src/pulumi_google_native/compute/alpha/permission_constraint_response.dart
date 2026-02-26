// ignore_for_file: unused_element, unnecessary_cast

/// Custom constraint that specifies a key and a list of allowed values for Istio attributes.
class PermissionConstraintResponse {
  /// Key of the constraint.
  final String key;

  /// A list of allowed values.
  final List<String> values;

  PermissionConstraintResponse({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory PermissionConstraintResponse.fromMap(Map<String, dynamic> map) {
    return PermissionConstraintResponse(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
