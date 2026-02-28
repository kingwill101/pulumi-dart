// ignore_for_file: unused_element, unnecessary_cast

class FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy {
  /// A KeyAccessJustificationsPolicy specifies zero or more allowed
  /// AccessReason values for encrypt, decrypt, and sign operations on a
  /// CryptoKey.
  /// Each value may be one of: `CUSTOMER_INITIATED_SUPPORT`, `GOOGLE_INITIATED_SERVICE`, `THIRD_PARTY_DATA_REQUEST`, `GOOGLE_INITIATED_REVIEW`, `CUSTOMER_INITIATED_ACCESS`, `GOOGLE_INITIATED_SYSTEM_OPERATION`, `REASON_NOT_EXPECTED`, `MODIFIED_CUSTOMER_INITIATED_ACCESS`, `MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION`, `GOOGLE_RESPONSE_TO_PRODUCTION_ALERT`, `CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING`.
  final List<String>? allowedAccessReasons;

  /// Creates a new [FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy].
  /// [allowedAccessReasons] A KeyAccessJustificationsPolicy specifies zero or more allowed
  FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy({
    this.allowedAccessReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedAccessReasonsValue = allowedAccessReasons;
    if (allowedAccessReasonsValue != null) {
      map['allowedAccessReasons'] = allowedAccessReasonsValue;
    }
    return map;
  }

  factory FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap(
      Map<String, dynamic> map) {
    return FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy(
      allowedAccessReasons: map['allowedAccessReasons'] == null
          ? null
          : (map['allowedAccessReasons'] as List).cast<String>(),
    );
  }
}
