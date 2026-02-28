// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of Cloud SQL instance that is used by the Apache Airflow software.
class DatabaseConfigResponse {
  /// Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String machineType;

  /// Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it must be in the region selected for the environment. If zone is not provided, a zone is automatically selected. The zone can only be set during environment creation. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.*.
  final String zone;

  /// Creates a new [DatabaseConfigResponse].
  /// [machineType] Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [zone] Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it must be in the region selected for the environment. If zone is not provided, a zone is automatically selected. The zone can only be set during environment creation. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.*.
  DatabaseConfigResponse({
    required this.machineType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineType'] = machineType;
    map['zone'] = zone;
    return map;
  }

  factory DatabaseConfigResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseConfigResponse(
      machineType: map['machineType'] as String,
      zone: map['zone'] as String,
    );
  }
}
