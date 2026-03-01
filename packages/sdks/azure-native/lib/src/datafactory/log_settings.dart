// ignore_for_file: unused_element, unnecessary_cast

import 'copy_activity_log_settings.dart';
import 'log_location_settings.dart';

/// Log settings.
class LogSettings {
  /// Specifies settings for copy activity log.
  final CopyActivityLogSettings? copyActivityLogSettings;
  /// Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  final dynamic enableCopyActivityLog;
  /// Log location settings customer needs to provide when enabling log.
  final LogLocationSettings logLocationSettings;

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
      'copyActivityLogSettings': ?copyActivityLogSettings == null ? null : copyActivityLogSettings!.toMap(),
      'enableCopyActivityLog': ?enableCopyActivityLog,
      'logLocationSettings': logLocationSettings.toMap(),
    };
  }

  factory LogSettings.fromMap(Map<String, dynamic> map) {
    return LogSettings(
      copyActivityLogSettings: map['copyActivityLogSettings'] == null ? null : CopyActivityLogSettings.fromMap((map['copyActivityLogSettings'] as Map).cast<String, dynamic>()),
      enableCopyActivityLog: map['enableCopyActivityLog'] == null ? null : map['enableCopyActivityLog'],
      logLocationSettings: LogLocationSettings.fromMap((map['logLocationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

