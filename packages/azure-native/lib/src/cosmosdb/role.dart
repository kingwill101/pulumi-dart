// ignore_for_file: unused_element, unnecessary_cast


/// The set of roles permitted through this Role Definition.
class Role {
  /// The database name the role is applied.
  final String? db;
  /// The role name.
  final String? role;

  /// Creates a new [Role].
  /// [db] The database name the role is applied.
  /// [role] The role name.
  Role({
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
      db: map['db'] == null ? null : map['db'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

