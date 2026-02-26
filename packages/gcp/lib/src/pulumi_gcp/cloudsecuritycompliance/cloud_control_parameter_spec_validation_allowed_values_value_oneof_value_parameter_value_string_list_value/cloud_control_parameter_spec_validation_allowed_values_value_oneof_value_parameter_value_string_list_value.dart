// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
