// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of roles permitted through this Role Definition.
class RoleResponse {
  /// The database name the role is applied.
  final pulumi.Input<String>? db;
  /// The role name.
  final pulumi.Input<String>? role;

  /// Creates a new [RoleResponse].
  /// [db] The database name the role is applied.
  /// [role] The role name.
  RoleResponse({
    this.db,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': ?db,
      'role': ?role,
    };
  }

  factory RoleResponse.fromMap(Map<String, dynamic> map) {
    return RoleResponse(
      db: map['db'] == null ? null : (map['db']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

