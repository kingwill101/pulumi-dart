// ignore_for_file: unused_element, unnecessary_cast

import 'log_location_settings_response.dart';

/// Log settings of script activity.
class ScriptActivityTypePropertiesResponseLogSettings {
  /// The destination of logs. Type: string.
  final String logDestination;
  /// Log location settings customer needs to provide when enabling log.
  final LogLocationSettingsResponse? logLocationSettings;

  /// Creates a new [ScriptActivityTypePropertiesResponseLogSettings].
  /// [logDestination] The destination of logs. Type: string.
  /// [logLocationSettings] Log location settings customer needs to provide when enabling log.
  ScriptActivityTypePropertiesResponseLogSettings({
    required this.logDestination,
    this.logLocationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestination': logDestination,
      'logLocationSettings': ?logLocationSettings == null ? null : logLocationSettings!.toMap(),
    };
  }

  factory ScriptActivityTypePropertiesResponseLogSettings.fromMap(Map<String, dynamic> map) {
    return ScriptActivityTypePropertiesResponseLogSettings(
      logDestination: map['logDestination'] as String,
      logLocationSettings: map['logLocationSettings'] == null ? null : LogLocationSettingsResponse.fromMap((map['logLocationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

