// ignore_for_file: unused_element, unnecessary_cast


/// Text settings
class LogFileSettingsText {
  /// One of the supported timestamp formats
  final String recordStartTimestampFormat;

  /// Creates a new [LogFileSettingsText].
  /// [recordStartTimestampFormat] One of the supported timestamp formats
  LogFileSettingsText({
    required this.recordStartTimestampFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordStartTimestampFormat': recordStartTimestampFormat,
    };
  }

  factory LogFileSettingsText.fromMap(Map<String, dynamic> map) {
    return LogFileSettingsText(
      recordStartTimestampFormat: map['recordStartTimestampFormat'] as String,
    );
  }
}

