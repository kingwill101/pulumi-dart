// ignore_for_file: unused_element, unnecessary_cast

/// Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
class GoogleCloudRunV2CloudSqlInstanceResponse {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final List<String> instances;

  GoogleCloudRunV2CloudSqlInstanceResponse({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = instances;
    return map;
  }

  factory GoogleCloudRunV2CloudSqlInstanceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2CloudSqlInstanceResponse(
      instances: (map['instances'] as List).cast<String>(),
    );
  }
}
