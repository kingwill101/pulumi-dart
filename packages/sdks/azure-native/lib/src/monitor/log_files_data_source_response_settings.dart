// ignore_for_file: unused_element, unnecessary_cast

import 'log_file_settings_response_text.dart';

/// The log files specific settings.
class LogFilesDataSourceResponseSettings {
  /// Text settings
  final LogFileSettingsResponseText? text;

  /// Creates a new [LogFilesDataSourceResponseSettings].
  /// [text] Text settings
  LogFilesDataSourceResponseSettings({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory LogFilesDataSourceResponseSettings.fromMap(Map<String, dynamic> map) {
    return LogFilesDataSourceResponseSettings(
      text: map['text'] == null ? null : LogFileSettingsResponseText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

