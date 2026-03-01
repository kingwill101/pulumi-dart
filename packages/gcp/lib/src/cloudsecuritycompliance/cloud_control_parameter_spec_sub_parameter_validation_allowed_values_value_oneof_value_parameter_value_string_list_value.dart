// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
