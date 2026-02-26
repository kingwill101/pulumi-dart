// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamPolicy.
class GetIamPolicyResult2 {
  /// (Computed) The etag of the IAM policy.
  final String etag;
  final String folder;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Computed) The policy data
  final String policyData;

  GetIamPolicyResult2({
    required this.etag,
    required this.folder,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['etag'] = etag;
    map['folder'] = folder;
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetIamPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyResult2(
      etag: map['etag'] as String,
      folder: map['folder'] as String,
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
