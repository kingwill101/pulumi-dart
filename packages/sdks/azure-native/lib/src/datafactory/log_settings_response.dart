// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_activity_log_settings_response.dart';
import 'log_location_settings_response.dart';

/// Log settings.
class LogSettingsResponse {
  /// Specifies settings for copy activity log.
  final pulumi.Input<CopyActivityLogSettingsResponse>? copyActivityLogSettings;

  /// Specifies whether to enable copy activity log. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableCopyActivityLog;

  /// Log location settings customer needs to provide when enabling log.
  final pulumi.Input<LogLocationSettingsResponse> logLocationSettings;

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
      'copyActivityLogSettings':
          ?pulumi.Input.mapOptionalInputValue<
            CopyActivityLogSettingsResponse,
            Map<String, dynamic>
          >(copyActivityLogSettings, (value) => value.toMap()),
      'enableCopyActivityLog': ?enableCopyActivityLog,
      'logLocationSettings':
          pulumi.Input.mapInputValue<
            LogLocationSettingsResponse,
            Map<String, dynamic>
          >(logLocationSettings, (value) => value.toMap()),
    };
  }

  factory LogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogSettingsResponse(
      copyActivityLogSettings: (() {
        final guardedValue = map['copyActivityLogSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CopyActivityLogSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableCopyActivityLog: (() {
        final guardedValue = map['enableCopyActivityLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      logLocationSettings: pulumi.Input.fromValue(
        LogLocationSettingsResponse.fromMap(
          (map['logLocationSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
