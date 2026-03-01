// ignore_for_file: unused_element, unnecessary_cast


/// Environment Variables for the container
class EnvironmentVariableResponse {
  /// Type of the Environment Variable. Possible values are: local - For local variable
  final String? type;
  /// Value of the Environment variable
  final String? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [type] Type of the Environment Variable. Possible values are: local - For local variable
  /// [value] Value of the Environment variable
  EnvironmentVariableResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

