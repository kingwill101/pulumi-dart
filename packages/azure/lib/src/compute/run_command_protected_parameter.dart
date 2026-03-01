// ignore_for_file: unused_element, unnecessary_cast


class RunCommandProtectedParameter {
  /// The run parameter name.
  final String name;
  /// The run parameter value.
  final String value;

  /// Creates a new [RunCommandProtectedParameter].
  /// [name] The run parameter name.
  /// [value] The run parameter value.
  RunCommandProtectedParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandProtectedParameter.fromMap(Map<String, dynamic> map) {
    return RunCommandProtectedParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

