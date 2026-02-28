// ignore_for_file: unused_element, unnecessary_cast

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariable {
  /// Key for the environment variable.
  final String? key;

  /// Value for the environment variable.
  final String? value;

  /// Creates a new [EnvironmentVariable].
  /// [key] Key for the environment variable.
  /// [value] Value for the environment variable.
  EnvironmentVariable({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
