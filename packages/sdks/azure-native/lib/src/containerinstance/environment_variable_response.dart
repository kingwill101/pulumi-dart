// ignore_for_file: unused_element, unnecessary_cast


/// The environment variable to set within the container instance.
class EnvironmentVariableResponse {
  /// The name of the environment variable.
  final String name;
  /// The value of the secure environment variable.
  final String? secureValue;
  /// The reference of the secure environment variable.
  final String? secureValueReference;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] The name of the environment variable.
  /// [secureValue] The value of the secure environment variable.
  /// [secureValueReference] The reference of the secure environment variable.
  /// [value] The value of the environment variable.
  EnvironmentVariableResponse({
    required this.name,
    this.secureValue,
    this.secureValueReference,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'secureValueReference': ?secureValueReference,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: map['name'] as String,
      secureValue: map['secureValue'] == null ? null : map['secureValue'] as String,
      secureValueReference: map['secureValueReference'] == null ? null : map['secureValueReference'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

