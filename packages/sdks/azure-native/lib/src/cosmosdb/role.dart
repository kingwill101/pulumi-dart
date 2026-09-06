// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of roles permitted through this Role Definition.
class Role {
  /// The database name the role is applied.
  final pulumi.Input<String?>? db;
  /// The role name.
  final pulumi.Input<String?>? role;

  /// Creates a new [Role].
  /// [db] The database name the role is applied.
  /// [role] The role name.
  const Role({
    this.db,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'db': ?db,
      'role': ?role,
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      db: (() { final guardedValue = map['db']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
