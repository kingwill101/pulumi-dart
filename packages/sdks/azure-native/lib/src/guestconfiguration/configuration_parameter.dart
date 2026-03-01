// ignore_for_file: unused_element, unnecessary_cast


/// Represents a configuration parameter.
class ConfigurationParameter {
  /// Name of the configuration parameter.
  final String? name;
  /// Value of the configuration parameter.
  final String? value;

  /// Creates a new [ConfigurationParameter].
  /// [name] Name of the configuration parameter.
  /// [value] Value of the configuration parameter.
  ConfigurationParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

