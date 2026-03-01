// ignore_for_file: unused_element, unnecessary_cast


class DdrInstanceParameter {
  /// The parameter name.
  final String name;
  /// The parameter value.
  final String value;

  /// Creates a new [DdrInstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  DdrInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DdrInstanceParameter.fromMap(Map<String, dynamic> map) {
    return DdrInstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

