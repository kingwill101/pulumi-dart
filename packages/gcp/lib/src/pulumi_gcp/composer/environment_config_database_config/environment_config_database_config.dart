// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigDatabaseConfig {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  final String? machineType;

  /// Optional. Cloud SQL database preferred zone.
  final String? zone;

  EnvironmentConfigDatabaseConfig({
    this.machineType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory EnvironmentConfigDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigDatabaseConfig(
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
