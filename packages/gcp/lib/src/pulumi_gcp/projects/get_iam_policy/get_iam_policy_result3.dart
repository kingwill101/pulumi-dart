// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamPolicy.
class GetIamPolicyResult3 {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;
  final String project;

  GetIamPolicyResult3({
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

  factory GetIamPolicyResult3.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult3(
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
    );
  }
}
