// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Built-in role-based authorization policy.
class RoleBasedBuiltInAuthorizationPolicyResponse {
  /// Authorization scheme type.
  /// Expected value is 'Default'.
  final pulumi.Input<String> type;

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
      type: (map['type'] as String).input(),
    );
  }
}

