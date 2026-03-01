// ignore_for_file: unused_element, unnecessary_cast


/// The environment variable to pass to the script in the container instance.
class EnvironmentVariable {
  /// The name of the environment variable.
  final String name;
  /// The value of the secure environment variable.
  final String? secureValue;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [EnvironmentVariable].
  /// [name] The name of the environment variable.
  /// [secureValue] The value of the secure environment variable.
  /// [value] The value of the environment variable.
  EnvironmentVariable({
    required this.name,
    this.secureValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      name: map['name'] as String,
      secureValue: map['secureValue'] == null ? null : map['secureValue'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

