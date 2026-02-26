// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecValidationAllowedValuesValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecValidationAllowedValuesValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
