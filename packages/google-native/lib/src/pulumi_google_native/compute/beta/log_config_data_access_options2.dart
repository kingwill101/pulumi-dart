// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_data_access_options_log_mode2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptions2 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsLogMode2? logMode;

  LogConfigDataAccessOptions2({
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

  factory LogConfigDataAccessOptions2.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptions2(
      logMode: map['logMode'] == null
          ? null
          : LogConfigDataAccessOptionsLogMode2.fromValue(
              map['logMode'] as String),
    );
  }
}
