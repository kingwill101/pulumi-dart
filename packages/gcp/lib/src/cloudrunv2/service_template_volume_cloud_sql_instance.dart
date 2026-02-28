// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateVolumeCloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final List<String>? instances;

  /// Creates a new [ServiceTemplateVolumeCloudSqlInstance].
  /// [instances] The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  ServiceTemplateVolumeCloudSqlInstance({
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

  factory ServiceTemplateVolumeCloudSqlInstance.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateVolumeCloudSqlInstance(
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
    );
  }
}
