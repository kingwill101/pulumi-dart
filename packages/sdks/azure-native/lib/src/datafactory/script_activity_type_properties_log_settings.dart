// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_location_settings.dart';

/// Log settings of script activity.
class ScriptActivityTypePropertiesLogSettings {
  /// The destination of logs. Type: string.
  final pulumi.Input<dynamic> logDestination;
  /// Log location settings customer needs to provide when enabling log.
  final pulumi.Input<LogLocationSettings?>? logLocationSettings;

  /// Creates a new [ScriptActivityTypePropertiesLogSettings].
  /// [logDestination] The destination of logs. Type: string.
  /// [logLocationSettings] Log location settings customer needs to provide when enabling log.
  const ScriptActivityTypePropertiesLogSettings({
    required this.logDestination,
    this.logLocationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestination': logDestination,
      'logLocationSettings': ?pulumi.Input.mapOptionalInputValue<LogLocationSettings, Map<String, dynamic>>(logLocationSettings, (value) => value.toMap()),
    };
  }

  factory ScriptActivityTypePropertiesLogSettings.fromMap(Map<String, dynamic> map) {
    return ScriptActivityTypePropertiesLogSettings(
      logDestination: pulumi.Input.fromValue(map['logDestination']),
      logLocationSettings: (() { final guardedValue = map['logLocationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogLocationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
