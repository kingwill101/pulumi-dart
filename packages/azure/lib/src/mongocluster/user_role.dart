// ignore_for_file: unused_element, unnecessary_cast


class UserRole {
  /// The name of the database to which the role will be applied. Changing this forces a new resource to be created.
  final String database;
  /// The role name. The only possible value is `root`. Changing this forces a new resource to be created.
  final String name;

  /// Creates a new [UserRole].
  /// [database] The name of the database to which the role will be applied. Changing this forces a new resource to be created.
  /// [name] The role name. The only possible value is `root`. Changing this forces a new resource to be created.
  UserRole({
    required this.database,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'name': name,
    };
  }

  factory UserRole.fromMap(Map<String, dynamic> map) {
    return UserRole(
      database: map['database'] as String,
      name: map['name'] as String,
    );
  }
}

