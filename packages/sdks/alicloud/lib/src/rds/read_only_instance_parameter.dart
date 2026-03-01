// ignore_for_file: unused_element, unnecessary_cast


class ReadOnlyInstanceParameter {
  /// The parameter name.
  final String name;
  /// The parameter value.
  final String value;

  /// Creates a new [ReadOnlyInstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  ReadOnlyInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ReadOnlyInstanceParameter.fromMap(Map<String, dynamic> map) {
    return ReadOnlyInstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

