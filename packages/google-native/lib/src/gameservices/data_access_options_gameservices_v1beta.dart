// ignore_for_file: unused_element, unnecessary_cast

import 'data_access_options_log_mode_gameservices_v1beta.dart';

/// Write a Data Access (Gin) log
class DataAccessOptionsGameservicesV1beta {
  final DataAccessOptionsLogModeGameservicesV1beta? logMode;

  /// Creates a new [DataAccessOptionsGameservicesV1beta].
  /// [logMode] Optional.
  DataAccessOptionsGameservicesV1beta({this.logMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?logMode == null ? null : logMode!.value,
    };
  }

  factory DataAccessOptionsGameservicesV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataAccessOptionsGameservicesV1beta(
      logMode: map['logMode'] == null
          ? null
          : DataAccessOptionsLogModeGameservicesV1beta.fromValue(
              map['logMode'] as String,
            ),
    );
  }
}
