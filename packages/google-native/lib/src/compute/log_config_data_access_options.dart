// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_data_access_options_log_mode.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptions {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsLogMode? logMode;

  /// Creates a new [LogConfigDataAccessOptions].
  /// [logMode] This is deprecated and has no effect. Do not use.
  LogConfigDataAccessOptions({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logModeValue = logMode;
    if (logModeValue != null) {
      map['logMode'] = logModeValue.value;
    }
    return map;
  }

  factory LogConfigDataAccessOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptions(
      logMode: map['logMode'] == null
          ? null
          : LogConfigDataAccessOptionsLogMode.fromValue(
              map['logMode'] as String),
    );
  }
}
