// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_file_settings_response_text.dart';

/// The log files specific settings.
class LogFilesDataSourceResponseSettings {
  /// Text settings
  final pulumi.Input<LogFileSettingsResponseText>? text;

  /// Creates a new [LogFilesDataSourceResponseSettings].
  /// [text] Text settings
  const LogFilesDataSourceResponseSettings({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?pulumi.Input.mapOptionalInputValue<LogFileSettingsResponseText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory LogFilesDataSourceResponseSettings.fromMap(Map<String, dynamic> map) {
    return LogFilesDataSourceResponseSettings(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogFileSettingsResponseText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
