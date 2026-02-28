// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamPolicy.
class GetIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;
  final String serviceAccountId;

  /// Creates a new [GetIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  /// [serviceAccountId] Required.
  GetIamPolicyResult({
    required this.etag,
    required this.id,
    required this.policyData,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
