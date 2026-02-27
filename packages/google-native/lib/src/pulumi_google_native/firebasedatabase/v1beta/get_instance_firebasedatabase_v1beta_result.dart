// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstance.
class GetInstanceFirebasedatabaseV1betaResult {
  /// Output Only. The globally unique hostname of the database.
  final String databaseUrl;

  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  final String name;

  /// The resource name of the project this instance belongs to. For example: `projects/{project-number}`.
  final String project;

  /// The database's lifecycle state. Read-only.
  final String state;

  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  final String type;

  GetInstanceFirebasedatabaseV1betaResult({
    required this.databaseUrl,
    required this.name,
    required this.project,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseUrl'] = databaseUrl;
    map['name'] = name;
    map['project'] = project;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory GetInstanceFirebasedatabaseV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceFirebasedatabaseV1betaResult(
      databaseUrl: map['databaseUrl'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
