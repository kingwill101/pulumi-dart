// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_setting_response.dart';

/// Capabilities on the java logging scenario.
class RuntimeResponseLogging {
  /// Settings of the logger for the java app.
  final pulumi.Input<List<LoggerSettingResponse>>? loggerSettings;

  /// Creates a new [RuntimeResponseLogging].
  /// [loggerSettings] Settings of the logger for the java app.
  const RuntimeResponseLogging({
    this.loggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerSettings': ?pulumi.Input.mapOptionalInputValue<List<LoggerSettingResponse>, List<Map<String, dynamic>>>(loggerSettings, (value) => pulumi.Input.encodeList<LoggerSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuntimeResponseLogging.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseLogging(
      loggerSettings: (() { final guardedValue = map['loggerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoggerSettingResponse>(guardedValue, (value) => LoggerSettingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
