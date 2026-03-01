// ignore_for_file: unused_element, unnecessary_cast


/// Environment Variables for the container
class EnvironmentVariable {
  /// Type of the Environment Variable. Possible values are: local - For local variable
  final String? type;
  /// Value of the Environment variable
  final String? value;

  /// Creates a new [EnvironmentVariable].
  /// [type] Type of the Environment Variable. Possible values are: local - For local variable
  /// [value] Value of the Environment variable
  EnvironmentVariable({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

