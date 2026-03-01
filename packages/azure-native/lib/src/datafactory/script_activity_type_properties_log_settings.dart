// ignore_for_file: unused_element, unnecessary_cast

import 'log_location_settings.dart';

/// Log settings of script activity.
class ScriptActivityTypePropertiesLogSettings {
  /// The destination of logs. Type: string.
  final String logDestination;
  /// Log location settings customer needs to provide when enabling log.
  final LogLocationSettings? logLocationSettings;

  /// Creates a new [ScriptActivityTypePropertiesLogSettings].
  /// [logDestination] The destination of logs. Type: string.
  /// [logLocationSettings] Log location settings customer needs to provide when enabling log.
  ScriptActivityTypePropertiesLogSettings({
    required this.logDestination,
    this.logLocationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestination': logDestination,
      'logLocationSettings': ?logLocationSettings == null ? null : logLocationSettings!.toMap(),
    };
  }

  factory ScriptActivityTypePropertiesLogSettings.fromMap(Map<String, dynamic> map) {
    return ScriptActivityTypePropertiesLogSettings(
      logDestination: map['logDestination'] as String,
      logLocationSettings: map['logLocationSettings'] == null ? null : LogLocationSettings.fromMap((map['logLocationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

