// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountIamPolicy.
class GetAccountIamPolicyResult {
  final String billingAccountId;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;

  GetAccountIamPolicyResult({
    required this.billingAccountId,
    required this.etag,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetAccountIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountIamPolicyResult(
      billingAccountId: map['billingAccountId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
