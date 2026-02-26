// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatasetIamPolicy.
class GetDatasetIamPolicyResult2 {
  final String datasetId;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;

  GetDatasetIamPolicyResult2({
    required this.datasetId,
    required this.etag,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetDatasetIamPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyResult2(
      datasetId: map['datasetId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
