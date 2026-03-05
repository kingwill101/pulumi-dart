// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_activity_log_settings.dart';
import 'log_location_settings.dart';

/// Log settings.
class LogSettings {
  /// Specifies settings for copy activity log.
  final pulumi.Input<CopyActivityLogSettings>? copyActivityLogSettings;
  /// Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableCopyActivityLog;
  /// Log location settings customer needs to provide when enabling log.
  final pulumi.Input<LogLocationSettings> logLocationSettings;

  /// Creates a new [LogSettings].
  /// [copyActivityLogSettings] Specifies settings for copy activity log.
  /// [enableCopyActivityLog] Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  /// [logLocationSettings] Log location settings customer needs to provide when enabling log.
  LogSettings({
    this.copyActivityLogSettings,
    this.enableCopyActivityLog,
    required this.logLocationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyActivityLogSettings': ?pulumi.Input.mapOptionalInputValue<CopyActivityLogSettings, Map<String, dynamic>>(copyActivityLogSettings, (value) => value.toMap()),
      'enableCopyActivityLog': ?enableCopyActivityLog,
      'logLocationSettings': pulumi.Input.mapInputValue<LogLocationSettings, Map<String, dynamic>>(logLocationSettings, (value) => value.toMap()),
    };
  }

  factory LogSettings.fromMap(Map<String, dynamic> map) {
    return LogSettings(
      copyActivityLogSettings: (() { final guardedValue = map['copyActivityLogSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CopyActivityLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableCopyActivityLog: (() { final guardedValue = map['enableCopyActivityLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      logLocationSettings: pulumi.Input.fromValue(LogLocationSettings.fromMap((map['logLocationSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

