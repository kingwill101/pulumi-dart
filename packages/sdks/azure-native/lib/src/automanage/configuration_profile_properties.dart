// ignore_for_file: unused_element, unnecessary_cast


/// Automanage configuration profile properties.
class ConfigurationProfileProperties {
  /// configuration dictionary of the configuration profile.
  final dynamic configuration;

  /// Creates a new [ConfigurationProfileProperties].
  /// [configuration] configuration dictionary of the configuration profile.
  ConfigurationProfileProperties({
    this.configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
    };
  }

  factory ConfigurationProfileProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileProperties(
      configuration: map['configuration'] == null ? null : map['configuration'],
    );
  }
}

