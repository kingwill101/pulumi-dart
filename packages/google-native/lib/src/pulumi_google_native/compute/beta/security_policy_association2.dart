// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAssociation2 {
  /// The resource that the security policy is attached to.
  final String? attachmentId;

  /// The name for an association.
  final String? name;

  SecurityPolicyAssociation2({
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

  factory SecurityPolicyAssociation2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociation2(
      attachmentId:
          map['attachmentId'] == null ? null : map['attachmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
