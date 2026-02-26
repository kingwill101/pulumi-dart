// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on a list of allowed values.
class ValueValidation2 {
  /// List of allowed values for the parameter.
  final List<String> values;

  ValueValidation2({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ValueValidation2.fromMap(Map<String, dynamic> map) {
    return ValueValidation2(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
