// ignore_for_file: unused_element, unnecessary_cast

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariableResponse {
  /// Key for the environment variable.
  final String key;

  /// Value for the environment variable.
  final String value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [key] Key for the environment variable.
  /// [value] Value for the environment variable.
  EnvironmentVariableResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
