// ignore_for_file: unused_element, unnecessary_cast

/// Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
class GoogleCloudRunV2CloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final List<String>? instances;

  GoogleCloudRunV2CloudSqlInstance({
    this.instances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    return map;
  }

  factory GoogleCloudRunV2CloudSqlInstance.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2CloudSqlInstance(
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
    );
  }
}
