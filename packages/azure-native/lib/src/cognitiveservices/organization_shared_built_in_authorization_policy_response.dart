// ignore_for_file: unused_element, unnecessary_cast


/// Built-in authorization policy scoped to organization/tenant.
class OrganizationSharedBuiltInAuthorizationPolicyResponse {
  /// Authorization scheme type.
  /// Expected value is 'OrganizationScope'.
  final String type;

  /// Creates a new [OrganizationSharedBuiltInAuthorizationPolicyResponse].
  /// [type] Authorization scheme type.
  OrganizationSharedBuiltInAuthorizationPolicyResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory OrganizationSharedBuiltInAuthorizationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return OrganizationSharedBuiltInAuthorizationPolicyResponse(
      type: map['type'] as String,
    );
  }
}

