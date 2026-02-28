// ignore_for_file: unused_element, unnecessary_cast

class ProjectEnvironmentEnvironmentVariable {
  /// Environment variable's name or key.
  final String name;

  /// Type of environment variable. Valid values: `PARAMETER_STORE`, `PLAINTEXT`, `SECRETS_MANAGER`.
  final String? type;

  /// Environment variable's value.
  final String value;

  /// Creates a new [ProjectEnvironmentEnvironmentVariable].
  /// [name] Environment variable's name or key.
  /// [type] Type of environment variable. Valid values: `PARAMETER_STORE`, `PLAINTEXT`, `SECRETS_MANAGER`.
  /// [value] Environment variable's value.
  ProjectEnvironmentEnvironmentVariable({
    required this.name,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    map['value'] = value;
    return map;
  }

  factory ProjectEnvironmentEnvironmentVariable.fromMap(
      Map<String, dynamic> map) {
    return ProjectEnvironmentEnvironmentVariable(
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}
