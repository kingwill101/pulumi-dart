// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAssociation {
  /// The resource that the security policy is attached to.
  final String? attachmentId;

  /// The name for an association.
  final String? name;

  /// Creates a new [SecurityPolicyAssociation].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [name] The name for an association.
  SecurityPolicyAssociation({
    this.attachmentId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentIdValue = attachmentId;
    if (attachmentIdValue != null) {
      map['attachmentId'] = attachmentIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory SecurityPolicyAssociation.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociation(
      attachmentId:
          map['attachmentId'] == null ? null : map['attachmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
