// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a run command parameter.
class RunCommandInputParameterResponse {
  /// The run command parameter name.
  final String name;
  /// The run command parameter value.
  final String value;

  /// Creates a new [RunCommandInputParameterResponse].
  /// [name] The run command parameter name.
  /// [value] The run command parameter value.
  RunCommandInputParameterResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandInputParameterResponse.fromMap(Map<String, dynamic> map) {
    return RunCommandInputParameterResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

