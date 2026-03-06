// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_settings.dart';

/// Application Configuration Service properties payload
class ConfigurationServiceProperties {
  /// The generation of the Application Configuration Service.
  final pulumi.Input<String>? generation;
  /// The settings of Application Configuration Service.
  final pulumi.Input<ConfigurationServiceSettings>? settings;

  /// Creates a new [ConfigurationServiceProperties].
  /// [generation] The generation of the Application Configuration Service.
  /// [settings] The settings of Application Configuration Service.
  const ConfigurationServiceProperties({
    this.generation,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'settings': ?pulumi.Input.mapOptionalInputValue<ConfigurationServiceSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ConfigurationServiceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceProperties(
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationServiceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

