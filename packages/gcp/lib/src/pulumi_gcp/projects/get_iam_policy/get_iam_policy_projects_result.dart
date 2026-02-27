// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamPolicy.
class GetIamPolicyProjectsResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;
  final String project;

  GetIamPolicyProjectsResult({
    required this.etag,
    required this.id,
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    map['project'] = project;
    return map;
  }

  factory GetIamPolicyProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyProjectsResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
    );
  }
}
