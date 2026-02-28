// ignore_for_file: unused_element, unnecessary_cast


class CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

