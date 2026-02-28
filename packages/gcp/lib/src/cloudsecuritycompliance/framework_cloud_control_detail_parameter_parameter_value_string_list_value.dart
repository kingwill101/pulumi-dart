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
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory FrameworkCloudControlDetailParameterParameterValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
