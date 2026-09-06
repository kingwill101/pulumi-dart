// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_server_settings.dart';
import 'error.dart';

/// Config server git properties payload
class ConfigServerProperties {
  /// Settings of config server.
  final pulumi.Input<ConfigServerSettings?>? configServer;
  /// Enabled state of the config server. This is only used in Consumption tier.
  final pulumi.Input<dynamic>? enabledState;
  /// Error when apply config server settings.
  final pulumi.Input<Error?>? error;

  /// Creates a new [ConfigServerProperties].
  /// [configServer] Settings of config server.
  /// [enabledState] Enabled state of the config server. This is only used in Consumption tier.
  /// [error] Error when apply config server settings.
  const ConfigServerProperties({
    this.configServer,
    this.enabledState,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServer': ?pulumi.Input.mapOptionalInputValue<ConfigServerSettings, Map<String, dynamic>>(configServer, (value) => value.toMap()),
      'enabledState': ?enabledState,
      'error': ?pulumi.Input.mapOptionalInputValue<Error, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory ConfigServerProperties.fromMap(Map<String, dynamic> map) {
    return ConfigServerProperties(
      configServer: (() { final guardedValue = map['configServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigServerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Error.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
