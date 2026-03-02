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
      logDestination: (map['logDestination'] as String).input(),
      logLocationSettings: map['logLocationSettings'] == null ? null : (LogLocationSettingsResponse.fromMap((map['logLocationSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

