// ignore_for_file: unused_element, unnecessary_cast


/// Built-in role-based authorization policy.
class RoleBasedBuiltInAuthorizationPolicyResponse {
  /// Authorization scheme type.
  /// Expected value is 'Default'.
  final String type;

  /// Creates a new [RoleBasedBuiltInAuthorizationPolicyResponse].
  /// [type] Authorization scheme type.
  RoleBasedBuiltInAuthorizationPolicyResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RoleBasedBuiltInAuthorizationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RoleBasedBuiltInAuthorizationPolicyResponse(
      type: map['type'] as String,
    );
  }
}

