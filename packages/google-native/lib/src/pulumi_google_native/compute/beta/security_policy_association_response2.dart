// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAssociationResponse2 {
  /// The resource that the security policy is attached to.
  final String attachmentId;

  /// The display name of the security policy of the association.
  final String displayName;

  /// The name for an association.
  final String name;

  /// The security policy ID of the association.
  final String securityPolicyId;

  SecurityPolicyAssociationResponse2({
    required this.attachmentId,
    required this.displayName,
    required this.name,
    required this.securityPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['displayName'] = displayName;
    map['name'] = name;
    map['securityPolicyId'] = securityPolicyId;
    return map;
  }

  factory SecurityPolicyAssociationResponse2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociationResponse2(
      attachmentId: map['attachmentId'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      securityPolicyId: map['securityPolicyId'] as String,
    );
  }
}
