// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Text settings
class LogFileSettingsText {
  /// One of the supported timestamp formats
  final pulumi.Input<String> recordStartTimestampFormat;

  /// Creates a new [LogFileSettingsText].
  /// [recordStartTimestampFormat] One of the supported timestamp formats
  const LogFileSettingsText({
    required this.recordStartTimestampFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordStartTimestampFormat': recordStartTimestampFormat,
    };
  }

  factory LogFileSettingsText.fromMap(Map<String, dynamic> map) {
    return LogFileSettingsText(
      recordStartTimestampFormat: pulumi.Input.fromValue(map['recordStartTimestampFormat'] as String),
    );
  }
}

