// ignore_for_file: unused_element, unnecessary_cast

class GetJobTemplateTemplateVolumeCloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final List<String> instances;

  /// Creates a new [GetJobTemplateTemplateVolumeCloudSqlInstance].
  /// [instances] The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  GetJobTemplateTemplateVolumeCloudSqlInstance({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = instances;
    return map;
  }

  factory GetJobTemplateTemplateVolumeCloudSqlInstance.fromMap(
      Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolumeCloudSqlInstance(
      instances: (map['instances'] as List).cast<String>(),
    );
  }
}
