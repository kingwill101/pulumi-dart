// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logger_setting.dart';

/// Capabilities on the java logging scenario.
class RuntimeLogging {
  /// Settings of the logger for the java app.
  final pulumi.Input<List<LoggerSetting>>? loggerSettings;

  /// Creates a new [RuntimeLogging].
  /// [loggerSettings] Settings of the logger for the java app.
  RuntimeLogging({
    this.loggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerSettings': ?pulumi.Input.mapOptionalInputValue<List<LoggerSetting>, List<Map<String, dynamic>>>(loggerSettings, (value) => pulumi.Input.encodeList<LoggerSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuntimeLogging.fromMap(Map<String, dynamic> map) {
    return RuntimeLogging(
      loggerSettings: map['loggerSettings'] == null ? null : (pulumi.Input.decodeList<LoggerSetting>(map['loggerSettings']!, (value) => LoggerSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

