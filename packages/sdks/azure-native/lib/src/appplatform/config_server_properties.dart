// ignore_for_file: unused_element, unnecessary_cast

import 'config_server_settings.dart';
import 'error.dart';

/// Config server git properties payload
class ConfigServerProperties {
  /// Settings of config server.
  final ConfigServerSettings? configServer;
  /// Enabled state of the config server. This is only used in Consumption tier.
  final String? enabledState;
  /// Error when apply config server settings.
  final Error? error;

  /// Creates a new [ConfigServerProperties].
  /// [configServer] Settings of config server.
  /// [enabledState] Enabled state of the config server. This is only used in Consumption tier.
  /// [error] Error when apply config server settings.
  ConfigServerProperties({
    this.configServer,
    this.enabledState,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServer': ?configServer == null ? null : configServer!.toMap(),
      'enabledState': ?enabledState,
      'error': ?error == null ? null : error!.toMap(),
    };
  }

  factory ConfigServerProperties.fromMap(Map<String, dynamic> map) {
    return ConfigServerProperties(
      configServer: map['configServer'] == null ? null : ConfigServerSettings.fromMap((map['configServer'] as Map).cast<String, dynamic>()),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      error: map['error'] == null ? null : Error.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}

