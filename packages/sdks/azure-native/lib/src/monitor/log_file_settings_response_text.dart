// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Text settings
class LogFileSettingsResponseText {
  /// One of the supported timestamp formats
  final pulumi.Input<String> recordStartTimestampFormat;

  /// Creates a new [LogFileSettingsResponseText].
  /// [recordStartTimestampFormat] One of the supported timestamp formats
  LogFileSettingsResponseText({required this.recordStartTimestampFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordStartTimestampFormat': recordStartTimestampFormat,
    };
  }

  factory LogFileSettingsResponseText.fromMap(Map<String, dynamic> map) {
    return LogFileSettingsResponseText(
      recordStartTimestampFormat: pulumi.Input.fromValue(
        map['recordStartTimestampFormat'] as String,
      ),
    );
  }
}
