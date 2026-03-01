// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecDefaultValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlParameterSpecDefaultValueStringListValue].
  /// [values] The strings in the list.
  CloudControlParameterSpecDefaultValueStringListValue({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory CloudControlParameterSpecDefaultValueStringListValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecDefaultValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
