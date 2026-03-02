// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database role definition that is assigned to a user.
class DatabaseRoleResponse {
  /// Database scope that the role is assigned to.
  final pulumi.Input<String> db;
  /// The role that is assigned to the user on the database scope.
  final pulumi.Input<String> role;

  /// Creates a new [DatabaseRoleResponse].
  /// [db] Database scope that the role is assigned to.
  /// [role] The role that is assigned to the user on the database scope.
  DatabaseRoleResponse({
    required this.db,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': db,
      'role': role,
    };
  }

  factory DatabaseRoleResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseRoleResponse(
      db: (map['db'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

