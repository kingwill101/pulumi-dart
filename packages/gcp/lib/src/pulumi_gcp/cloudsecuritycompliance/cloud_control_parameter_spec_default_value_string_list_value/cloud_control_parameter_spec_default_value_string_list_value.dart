// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecDefaultValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecDefaultValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecDefaultValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecDefaultValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
