// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFhirStoreIamPolicy.
class GetFhirStoreIamPolicyResult {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  final String fhirStoreId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Computed) The policy data
  final String policyData;

  /// Creates a new [GetFhirStoreIamPolicyResult].
  /// [etag] (Computed) The etag of the IAM policy.
  /// [fhirStoreId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] (Computed) The policy data
  GetFhirStoreIamPolicyResult({
    required this.etag,
    required this.fhirStoreId,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'fhirStoreId': fhirStoreId,
      'id': id,
      'policyData': policyData,
    };
  }

  factory GetFhirStoreIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreIamPolicyResult(
      etag: map['etag'] as String,
      fhirStoreId: map['fhirStoreId'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}

