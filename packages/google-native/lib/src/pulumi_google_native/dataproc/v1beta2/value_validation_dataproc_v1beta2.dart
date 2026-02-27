// ignore_for_file: unused_element, unnecessary_cast

/// Validation based on a list of allowed values.
class ValueValidationDataprocV1beta2 {
  /// List of allowed values for the parameter.
  final List<String> values;

  ValueValidationDataprocV1beta2({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ValueValidationDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ValueValidationDataprocV1beta2(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
