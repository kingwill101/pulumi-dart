// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterIamPolicy.
class GetClusterIamPolicyResult {
  final String cluster;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String region;

  GetClusterIamPolicyResult({
    required this.cluster,
    required this.etag,
    required this.id,
    required this.policyData,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    map['project'] = project;
    map['region'] = region;
    return map;
  }

  factory GetClusterIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetClusterIamPolicyResult(
      cluster: map['cluster'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
