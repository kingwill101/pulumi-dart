// ignore_for_file: unused_element, unnecessary_cast


/// Container App container environment variable.
class EnvironmentVarResponse {
  /// Environment variable name.
  final String? name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final String? secretRef;
  /// Non-secret environment variable value.
  final String? value;

  /// Creates a new [EnvironmentVarResponse].
  /// [name] Environment variable name.
  /// [secretRef] Name of the Container App secret from which to pull the environment variable value.
  /// [value] Non-secret environment variable value.
  EnvironmentVarResponse({
    this.name,
    this.secretRef,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
      'value': ?value,
    };
  }

  factory EnvironmentVarResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVarResponse(
      name: map['name'] == null ? null : map['name'] as String,
      secretRef: map['secretRef'] == null ? null : map['secretRef'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

