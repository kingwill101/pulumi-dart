// ignore_for_file: unused_element, unnecessary_cast


/// Built-in role-based authorization policy.
class RoleBasedBuiltInAuthorizationPolicy {
  /// Authorization scheme type.
  /// Expected value is 'Default'.
  final String type;

  /// Creates a new [RoleBasedBuiltInAuthorizationPolicy].
  /// [type] Authorization scheme type.
  RoleBasedBuiltInAuthorizationPolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RoleBasedBuiltInAuthorizationPolicy.fromMap(Map<String, dynamic> map) {
    return RoleBasedBuiltInAuthorizationPolicy(
      type: map['type'] as String,
    );
  }
}

