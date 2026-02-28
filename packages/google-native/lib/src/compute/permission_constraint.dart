// ignore_for_file: unused_element, unnecessary_cast

/// Custom constraint that specifies a key and a list of allowed values for Istio attributes.
class PermissionConstraint {
  /// Key of the constraint.
  final String? key;

  /// A list of allowed values.
  final List<String>? values;

  /// Creates a new [PermissionConstraint].
  /// [key] Key of the constraint.
  /// [values] A list of allowed values.
  PermissionConstraint({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory PermissionConstraint.fromMap(Map<String, dynamic> map) {
    return PermissionConstraint(
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
