// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_service_settings.dart';

/// Application Configuration Service properties payload
class ConfigurationServiceProperties {
  /// The generation of the Application Configuration Service.
  final String? generation;
  /// The settings of Application Configuration Service.
  final ConfigurationServiceSettings? settings;

  /// Creates a new [ConfigurationServiceProperties].
  /// [generation] The generation of the Application Configuration Service.
  /// [settings] The settings of Application Configuration Service.
  ConfigurationServiceProperties({
    this.generation,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory ConfigurationServiceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceProperties(
      generation: map['generation'] == null ? null : map['generation'] as String,
      settings: map['settings'] == null ? null : ConfigurationServiceSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

