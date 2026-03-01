// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a run command parameter.
class RunCommandInputParameter {
  /// The run command parameter name.
  final String name;
  /// The run command parameter value.
  final String value;

  /// Creates a new [RunCommandInputParameter].
  /// [name] The run command parameter name.
  /// [value] The run command parameter value.
  RunCommandInputParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandInputParameter.fromMap(Map<String, dynamic> map) {
    return RunCommandInputParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

