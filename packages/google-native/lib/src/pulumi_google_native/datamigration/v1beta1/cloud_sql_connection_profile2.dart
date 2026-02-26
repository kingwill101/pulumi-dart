// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings2.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfile2 {
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final CloudSqlSettings2? settings;

  CloudSqlConnectionProfile2({
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = settingsValue.toMap();
    }
    return map;
  }

  factory CloudSqlConnectionProfile2.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfile2(
      settings: map['settings'] == null
          ? null
          : CloudSqlSettings2.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
