// ignore_for_file: unused_element, unnecessary_cast

import 'data_access_options_log_mode2.dart';

/// Write a Data Access (Gin) log
class DataAccessOptions2 {
  final DataAccessOptionsLogMode2? logMode;

  DataAccessOptions2({
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

  factory DataAccessOptions2.fromMap(Map<String, dynamic> map) {
    return DataAccessOptions2(
      logMode: map['logMode'] == null
          ? null
          : DataAccessOptionsLogMode2.fromValue(map['logMode'] as String),
    );
  }
}
