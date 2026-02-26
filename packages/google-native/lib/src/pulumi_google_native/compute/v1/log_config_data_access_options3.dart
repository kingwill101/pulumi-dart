// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_data_access_options_log_mode3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptions3 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsLogMode3? logMode;

  LogConfigDataAccessOptions3({
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

  factory LogConfigDataAccessOptions3.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptions3(
      logMode: map['logMode'] == null
          ? null
          : LogConfigDataAccessOptionsLogMode3.fromValue(
              map['logMode'] as String),
    );
  }
}
