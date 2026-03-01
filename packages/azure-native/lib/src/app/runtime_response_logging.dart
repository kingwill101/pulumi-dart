// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_setting_response.dart';

/// Capabilities on the java logging scenario.
class RuntimeResponseLogging {
  /// Settings of the logger for the java app.
  final List<LoggerSettingResponse>? loggerSettings;

  /// Creates a new [RuntimeResponseLogging].
  /// [loggerSettings] Settings of the logger for the java app.
  RuntimeResponseLogging({
    this.loggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerSettings': ?loggerSettings == null ? null : pulumi.Input.encodeList<LoggerSettingResponse, Map<String, dynamic>>(loggerSettings!, (value) => value.toMap()),
    };
  }

  factory RuntimeResponseLogging.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseLogging(
      loggerSettings: map['loggerSettings'] == null ? null : pulumi.Input.decodeList<LoggerSettingResponse>(map['loggerSettings'], (value) => LoggerSettingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

