// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of Cloud SQL instance that is used by the Apache Airflow software.
class DatabaseConfig2 {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String? machineType;

  /// Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it must be in the region selected for the environment. If zone is not provided, a zone is automatically selected. The zone can only be set during environment creation. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.*.
  final String? zone;

  DatabaseConfig2({
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

  factory DatabaseConfig2.fromMap(Map<String, dynamic> map) {
    return DatabaseConfig2(
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
