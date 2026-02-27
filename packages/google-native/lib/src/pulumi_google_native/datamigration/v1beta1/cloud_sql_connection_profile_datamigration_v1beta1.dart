// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings_datamigration_v1beta1.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileDatamigrationV1beta1 {
  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final CloudSqlSettingsDatamigrationV1beta1? settings;

  CloudSqlConnectionProfileDatamigrationV1beta1({
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

  factory CloudSqlConnectionProfileDatamigrationV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudSqlConnectionProfileDatamigrationV1beta1(
      settings: map['settings'] == null
          ? null
          : CloudSqlSettingsDatamigrationV1beta1.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
