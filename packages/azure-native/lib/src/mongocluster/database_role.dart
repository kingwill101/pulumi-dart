// ignore_for_file: unused_element, unnecessary_cast


/// Database role definition that is assigned to a user.
class DatabaseRole {
  /// Database scope that the role is assigned to.
  final String db;
  /// The role that is assigned to the user on the database scope.
  final String role;

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
      db: map['db'] as String,
      role: map['role'] as String,
    );
  }
}

