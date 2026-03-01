// ignore_for_file: unused_element, unnecessary_cast


class FrameworkCloudControlDetailParameterParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueStringListValue].
  /// [values] The strings in the list.
  FrameworkCloudControlDetailParameterParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

