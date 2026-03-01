// ignore_for_file: unused_element, unnecessary_cast


class RunCommandParameter {
  /// The run parameter name.
  final String name;
  /// The run parameter value.
  final String value;

  /// Creates a new [RunCommandParameter].
  /// [name] The run parameter name.
  /// [value] The run parameter value.
  RunCommandParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandParameter.fromMap(Map<String, dynamic> map) {
    return RunCommandParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

