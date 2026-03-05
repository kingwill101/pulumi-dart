// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Built-in role-based authorization policy.
class RoleBasedBuiltInAuthorizationPolicy {
  /// Authorization scheme type.
  /// Expected value is 'Default'.
  final pulumi.Input<String> type;

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
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

