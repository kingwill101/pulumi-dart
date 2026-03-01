// ignore_for_file: unused_element, unnecessary_cast


class InstanceParameter {
  /// The parameter name.
  final String name;
  /// The parameter value.
  final String value;

  /// Creates a new [InstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  InstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory InstanceParameter.fromMap(Map<String, dynamic> map) {
    return InstanceParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

