// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
