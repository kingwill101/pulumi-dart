// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDicomStoreIamPolicy.
class GetDicomStoreIamPolicyResult {
  final String dicomStoreId;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;

  /// Creates a new [GetDicomStoreIamPolicyResult].
  /// [dicomStoreId] Required.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  GetDicomStoreIamPolicyResult({
    required this.dicomStoreId,
    required this.etag,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dicomStoreId'] = dicomStoreId;
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetDicomStoreIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreIamPolicyResult(
      dicomStoreId: map['dicomStoreId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
