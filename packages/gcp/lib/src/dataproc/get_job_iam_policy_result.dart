// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getJobIamPolicy.
class GetJobIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String jobId;
  /// (Computed) The policy data
  final String policyData;
  final String project;
  final String region;

  /// Creates a new [GetJobIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jobId] Required.
  /// [policyData] (Computed) The policy data
  /// [project] Required.
  /// [region] Required.
  GetJobIamPolicyResult({
    required this.etag,
    required this.id,
    required this.jobId,
    required this.policyData,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'jobId': jobId,
      'policyData': policyData,
      'project': project,
      'region': region,
    };
  }

  factory GetJobIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      jobId: map['jobId'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}

