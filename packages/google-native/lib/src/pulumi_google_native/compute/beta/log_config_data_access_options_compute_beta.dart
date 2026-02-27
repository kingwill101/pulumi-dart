// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_data_access_options_log_mode_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsLogModeComputeBeta? logMode;

  LogConfigDataAccessOptionsComputeBeta({
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

  factory LogConfigDataAccessOptionsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsComputeBeta(
      logMode: map['logMode'] == null
          ? null
          : LogConfigDataAccessOptionsLogModeComputeBeta.fromValue(
              map['logMode'] as String),
    );
  }
}
