// ignore_for_file: unused_element, unnecessary_cast

import 'data_access_options_log_mode.dart';

/// Write a Data Access (Gin) log
class DataAccessOptions {
  final DataAccessOptionsLogMode? logMode;

  DataAccessOptions({
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

  factory DataAccessOptions.fromMap(Map<String, dynamic> map) {
    return DataAccessOptions(
      logMode: map['logMode'] == null
          ? null
          : DataAccessOptionsLogMode.fromValue(map['logMode'] as String),
    );
  }
}
