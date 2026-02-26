// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern {
  /// Regex to test the database name against. If empty, all databases match.
  final String? databaseRegex;

  /// Regex to test the database resource's name against. An example of a database resource name is a table's name. Other database resource names like view names could be included in the future. If empty, all database resources match.'
  final String? databaseResourceNameRegex;

  /// Regex to test the instance name against. If empty, all instances match.
  final String? instanceRegex;

  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final String? projectIdRegex;

  PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern({
    this.databaseRegex,
    this.databaseResourceNameRegex,
    this.instanceRegex,
    this.projectIdRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseRegexValue = databaseRegex;
    if (databaseRegexValue != null) {
      map['databaseRegex'] = databaseRegexValue;
    }
    final databaseResourceNameRegexValue = databaseResourceNameRegex;
    if (databaseResourceNameRegexValue != null) {
      map['databaseResourceNameRegex'] = databaseResourceNameRegexValue;
    }
    final instanceRegexValue = instanceRegex;
    if (instanceRegexValue != null) {
      map['instanceRegex'] = instanceRegexValue;
    }
    final projectIdRegexValue = projectIdRegex;
    if (projectIdRegexValue != null) {
      map['projectIdRegex'] = projectIdRegexValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetFilterCollectionIncludeRegexesPattern(
      databaseRegex:
          map['databaseRegex'] == null ? null : map['databaseRegex'] as String,
      databaseResourceNameRegex: map['databaseResourceNameRegex'] == null
          ? null
          : map['databaseResourceNameRegex'] as String,
      instanceRegex:
          map['instanceRegex'] == null ? null : map['instanceRegex'] as String,
      projectIdRegex: map['projectIdRegex'] == null
          ? null
          : map['projectIdRegex'] as String,
    );
  }
}
