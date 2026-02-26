// ignore_for_file: unused_element, unnecessary_cast

class CloudControlParameterSpecSubParameterDefaultValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  CloudControlParameterSpecSubParameterDefaultValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlParameterSpecSubParameterDefaultValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
