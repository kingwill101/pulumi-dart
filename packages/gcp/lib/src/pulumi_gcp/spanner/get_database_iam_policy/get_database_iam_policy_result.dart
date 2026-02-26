// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatabaseIamPolicy.
class GetDatabaseIamPolicyResult {
  final String database;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;

  /// (Computed) The policy data
  final String policyData;
  final String project;

  GetDatabaseIamPolicyResult({
    required this.database,
    required this.etag,
    required this.id,
    required this.instance,
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['etag'] = etag;
    map['id'] = id;
    map['instance'] = instance;
    map['policyData'] = policyData;
    map['project'] = project;
    return map;
  }

  factory GetDatabaseIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyResult(
      database: map['database'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      instance: map['instance'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
    );
  }
}
