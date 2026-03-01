// ignore_for_file: unused_element, unnecessary_cast

import 'log_file_settings_text.dart';

/// The log files specific settings.
class LogFilesDataSourceSettings {
  /// Text settings
  final LogFileSettingsText? text;

  /// Creates a new [LogFilesDataSourceSettings].
  /// [text] Text settings
  LogFilesDataSourceSettings({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory LogFilesDataSourceSettings.fromMap(Map<String, dynamic> map) {
    return LogFilesDataSourceSettings(
      text: map['text'] == null ? null : LogFileSettingsText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

