// ignore_for_file: unused_element, unnecessary_cast

import 'data_access_options_log_mode.dart';

/// Write a Data Access (Gin) log
class DataAccessOptions {
  final DataAccessOptionsLogMode? logMode;

  /// Creates a new [DataAccessOptions].
  /// [logMode] Optional.
  DataAccessOptions({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?logMode == null ? null : logMode!.value,
    };
  }

  factory DataAccessOptions.fromMap(Map<String, dynamic> map) {
    return DataAccessOptions(
      logMode: map['logMode'] == null ? null : DataAccessOptionsLogMode.fromValue(map['logMode'] as String),
    );
  }
}

