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

  /// Creates a new [GetKeyRingIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRingId] Required.
  /// [policyData] (Computed) The policy data
  GetKeyRingIamPolicyResult({
    required this.etag,
    required this.id,
    required this.keyRingId,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'keyRingId': keyRingId,
      'policyData': policyData,
    };
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

