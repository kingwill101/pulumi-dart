// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_file_settings_text.dart';

/// The log files specific settings.
class LogFilesDataSourceSettings {
  /// Text settings
  final pulumi.Input<LogFileSettingsText?>? text;

  /// Creates a new [LogFilesDataSourceSettings].
  /// [text] Text settings
  const LogFilesDataSourceSettings({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?pulumi.Input.mapOptionalInputValue<LogFileSettingsText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory LogFilesDataSourceSettings.fromMap(Map<String, dynamic> map) {
    return LogFilesDataSourceSettings(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogFileSettingsText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
