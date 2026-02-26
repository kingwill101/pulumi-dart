// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getJobIamPolicy.
class GetJobIamPolicyResult2 {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String jobId;

  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String region;

  GetJobIamPolicyResult2({
    required this.etag,
    required this.id,
    required this.jobId,
    required this.policyData,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['id'] = id;
    map['jobId'] = jobId;
    map['policyData'] = policyData;
    map['project'] = project;
    map['region'] = region;
    return map;
  }

  factory GetJobIamPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyResult2(
      etag: map['etag'] as String,
      id: map['id'] as String,
      jobId: map['jobId'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
