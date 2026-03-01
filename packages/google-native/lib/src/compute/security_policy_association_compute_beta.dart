// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAssociationComputeBeta {
  /// The resource that the security policy is attached to.
  final String? attachmentId;

  /// The name for an association.
  final String? name;

  /// Creates a new [SecurityPolicyAssociationComputeBeta].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [name] The name for an association.
  SecurityPolicyAssociationComputeBeta({this.attachmentId, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attachmentId': ?attachmentId, 'name': ?name};
  }

  factory SecurityPolicyAssociationComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAssociationComputeBeta(
      attachmentId: map['attachmentId'] == null
          ? null
          : map['attachmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
