// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCryptoKeyIamPolicy.
class GetCryptoKeyIamPolicyResult {
  final String cryptoKeyId;

  /// (Computed) The etag of the IAM policy.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;

  GetCryptoKeyIamPolicyResult({
    required this.cryptoKeyId,
    required this.etag,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    map['etag'] = etag;
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetCryptoKeyIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyIamPolicyResult(
      cryptoKeyId: map['cryptoKeyId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
