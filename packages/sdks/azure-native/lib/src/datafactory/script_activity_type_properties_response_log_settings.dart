// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_location_settings_response.dart';

/// Log settings of script activity.
class ScriptActivityTypePropertiesResponseLogSettings {
  /// The destination of logs. Type: string.
  final pulumi.Input<String> logDestination;
  /// Log location settings customer needs to provide when enabling log.
  final pulumi.Input<LogLocationSettingsResponse>? logLocationSettings;

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
      'logLocationSettings': ?pulumi.Input.mapOptionalInputValue<LogLocationSettingsResponse, Map<String, dynamic>>(logLocationSettings, (value) => value.toMap()),
    };
  }

  factory ScriptActivityTypePropertiesResponseLogSettings.fromMap(Map<String, dynamic> map) {
    return ScriptActivityTypePropertiesResponseLogSettings(
      logDestination: pulumi.Input.fromValue(map['logDestination'] as String),
      logLocationSettings: (() { final guardedValue = map['logLocationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogLocationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

