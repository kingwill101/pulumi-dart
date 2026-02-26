// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
