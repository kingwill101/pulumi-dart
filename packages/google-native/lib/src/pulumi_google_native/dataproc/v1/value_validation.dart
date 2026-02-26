// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on a list of allowed values.
class ValueValidation {
  /// List of allowed values for the parameter.
  final List<String> values;

  ValueValidation({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ValueValidation.fromMap(Map<String, dynamic> map) {
    return ValueValidation(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
