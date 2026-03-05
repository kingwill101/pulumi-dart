// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database role definition that is assigned to a user.
class DatabaseRole {
  /// Database scope that the role is assigned to.
  final pulumi.Input<String> db;
  /// The role that is assigned to the user on the database scope.
  final pulumi.Input<String> role;

  /// Creates a new [DatabaseRole].
  /// [db] Database scope that the role is assigned to.
  /// [role] The role that is assigned to the user on the database scope.
  DatabaseRole({
    required this.db,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': db,
      'role': role,
    };
  }

  factory DatabaseRole.fromMap(Map<String, dynamic> map) {
    return DatabaseRole(
      db: pulumi.Input.fromValue(map['db'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

