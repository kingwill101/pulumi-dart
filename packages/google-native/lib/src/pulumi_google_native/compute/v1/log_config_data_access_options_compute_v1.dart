// ignore_for_file: unused_element, unnecessary_cast

import 'log_config_data_access_options_log_mode_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final LogConfigDataAccessOptionsLogModeComputeV1? logMode;

  LogConfigDataAccessOptionsComputeV1({
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

  factory LogConfigDataAccessOptionsComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsComputeV1(
      logMode: map['logMode'] == null
          ? null
          : LogConfigDataAccessOptionsLogModeComputeV1.fromValue(
              map['logMode'] as String),
    );
  }
}
