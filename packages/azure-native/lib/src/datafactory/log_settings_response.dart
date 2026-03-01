// ignore_for_file: unused_element, unnecessary_cast

import 'copy_activity_log_settings_response.dart';
import 'log_location_settings_response.dart';

/// Log settings.
class LogSettingsResponse {
  /// Specifies settings for copy activity log.
  final CopyActivityLogSettingsResponse? copyActivityLogSettings;
  /// Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  final dynamic enableCopyActivityLog;
  /// Log location settings customer needs to provide when enabling log.
  final LogLocationSettingsResponse logLocationSettings;

  /// Creates a new [LogSettingsResponse].
  /// [copyActivityLogSettings] Specifies settings for copy activity log.
  /// [enableCopyActivityLog] Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  /// [logLocationSettings] Log location settings customer needs to provide when enabling log.
  LogSettingsResponse({
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

  factory LogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogSettingsResponse(
      copyActivityLogSettings: map['copyActivityLogSettings'] == null ? null : CopyActivityLogSettingsResponse.fromMap((map['copyActivityLogSettings'] as Map).cast<String, dynamic>()),
      enableCopyActivityLog: map['enableCopyActivityLog'] == null ? null : map['enableCopyActivityLog'],
      logLocationSettings: LogLocationSettingsResponse.fromMap((map['logLocationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

