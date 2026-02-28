// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigDatabaseConfig {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  final String machineType;

  /// Optional. Cloud SQL database preferred zone.
  final String zone;

  /// Creates a new [GetEnvironmentConfigDatabaseConfig].
  /// [machineType] Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used.
  /// [zone] Optional. Cloud SQL database preferred zone.
  GetEnvironmentConfigDatabaseConfig({
    required this.machineType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineType'] = machineType;
    map['zone'] = zone;
    return map;
  }

  factory GetEnvironmentConfigDatabaseConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigDatabaseConfig(
      machineType: map['machineType'] as String,
      zone: map['zone'] as String,
    );
  }
}
