// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on a list of allowed values.
class ValueValidationResponse2 {
  /// List of allowed values for the parameter.
  final List<String> values;

  ValueValidationResponse2({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ValueValidationResponse2.fromMap(Map<String, dynamic> map) {
    return ValueValidationResponse2(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
