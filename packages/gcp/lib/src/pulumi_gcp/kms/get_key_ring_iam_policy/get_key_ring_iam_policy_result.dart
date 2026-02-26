// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKeyRingIamPolicy.
class GetKeyRingIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyRingId;

  /// (Computed) The policy data
  final String policyData;

  GetKeyRingIamPolicyResult({
    required this.etag,
    required this.id,
    required this.keyRingId,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['id'] = id;
    map['keyRingId'] = keyRingId;
    map['policyData'] = policyData;
    return map;
  }

  factory GetKeyRingIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingIamPolicyResult(
      etag: map['etag'] as String,
      id: map['id'] as String,
      keyRingId: map['keyRingId'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
