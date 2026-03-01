// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecDefaultValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
