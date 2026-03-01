// ignore_for_file: unused_element, unnecessary_cast

import 'config_server_settings_response.dart';
import 'error_response.dart';

/// Config server git properties payload
class ConfigServerPropertiesResponse {
  /// Settings of config server.
  final ConfigServerSettingsResponse? configServer;
  /// Enabled state of the config server. This is only used in Consumption tier.
  final String? enabledState;
  /// Error when apply config server settings.
  final ErrorResponse? error;
  /// State of the config server.
  final String provisioningState;

  /// Creates a new [ConfigServerPropertiesResponse].
  /// [configServer] Settings of config server.
  /// [enabledState] Enabled state of the config server. This is only used in Consumption tier.
  /// [error] Error when apply config server settings.
  /// [provisioningState] State of the config server.
  ConfigServerPropertiesResponse({
    this.configServer,
    this.enabledState,
    this.error,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configServer': ?configServer == null ? null : configServer!.toMap(),
      'enabledState': ?enabledState,
      'error': ?error == null ? null : error!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ConfigServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigServerPropertiesResponse(
      configServer: map['configServer'] == null ? null : ConfigServerSettingsResponse.fromMap((map['configServer'] as Map).cast<String, dynamic>()),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      error: map['error'] == null ? null : ErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

