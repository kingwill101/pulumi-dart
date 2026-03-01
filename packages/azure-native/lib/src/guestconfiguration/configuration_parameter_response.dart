// ignore_for_file: unused_element, unnecessary_cast


/// Represents a configuration parameter.
class ConfigurationParameterResponse {
  /// Name of the configuration parameter.
  final String? name;
  /// Value of the configuration parameter.
  final String? value;

  /// Creates a new [ConfigurationParameterResponse].
  /// [name] Name of the configuration parameter.
  /// [value] Value of the configuration parameter.
  ConfigurationParameterResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ConfigurationParameterResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationParameterResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

