// ignore_for_file: unused_element, unnecessary_cast

class FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
