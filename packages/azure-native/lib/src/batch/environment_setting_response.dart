// ignore_for_file: unused_element, unnecessary_cast


/// An environment variable to be set on a task process.
class EnvironmentSettingResponse {
  /// The name of the environment variable.
  final String name;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [EnvironmentSettingResponse].
  /// [name] The name of the environment variable.
  /// [value] The value of the environment variable.
  EnvironmentSettingResponse({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory EnvironmentSettingResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentSettingResponse(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

