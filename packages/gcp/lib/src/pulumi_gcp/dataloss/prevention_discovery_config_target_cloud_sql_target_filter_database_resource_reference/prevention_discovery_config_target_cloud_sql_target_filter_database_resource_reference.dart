// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference {
  /// Required. Name of a database within the instance.
  final String database;

  /// Required. Name of a database resource, for example, a table within the database.
  final String databaseResource;

  /// Required. The instance where this resource is located. For example: Cloud SQL instance ID.
  final String instance;

  /// Required. If within a project-level config, then this must match the config's project ID.
  final String projectId;

  PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference({
    required this.database,
    required this.databaseResource,
    required this.instance,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['databaseResource'] = databaseResource;
    map['instance'] = instance;
    map['projectId'] = projectId;
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterDatabaseResourceReference(
      database: map['database'] as String,
      databaseResource: map['databaseResource'] as String,
      instance: map['instance'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
