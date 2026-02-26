// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTableIamPolicy.
class GetTableIamPolicyResult2 {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceName;

  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String table;

  GetTableIamPolicyResult2({
    required this.etag,
    required this.id,
    required this.instanceName,
    required this.policyData,
    required this.project,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['id'] = id;
    map['instanceName'] = instanceName;
    map['policyData'] = policyData;
    map['project'] = project;
    map['table'] = table;
    return map;
  }

  factory GetTableIamPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyResult2(
      etag: map['etag'] as String,
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      table: map['table'] as String,
    );
  }
}
