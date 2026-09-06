// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_server_settings_response.dart';
import 'error_response.dart';

/// Config server git properties payload
class ConfigServerPropertiesResponse {
  /// Settings of config server.
  final pulumi.Input<ConfigServerSettingsResponse?>? configServer;
  /// Enabled state of the config server. This is only used in Consumption tier.
  final pulumi.Input<String?>? enabledState;
  /// Error when apply config server settings.
  final pulumi.Input<ErrorResponse?>? error;
  /// State of the config server.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConfigServerPropertiesResponse].
  /// [configServer] Settings of config server.
  /// [enabledState] Enabled state of the config server. This is only used in Consumption tier.
  /// [error] Error when apply config server settings.
  /// [provisioningState] State of the config server.
  const ConfigServerPropertiesResponse({
    this.configServer,
    this.enabledState,
    this.error,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServer': ?pulumi.Input.mapOptionalInputValue<ConfigServerSettingsResponse, Map<String, dynamic>>(configServer, (value) => value.toMap()),
      'enabledState': ?enabledState,
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ConfigServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigServerPropertiesResponse(
      configServer: (() { final guardedValue = map['configServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigServerSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
