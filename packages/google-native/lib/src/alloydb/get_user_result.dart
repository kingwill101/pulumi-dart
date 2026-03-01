// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUser.
class GetUserResult {
  /// Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  final List<String> databaseRoles;

  /// Name of the resource in the form of projects/{project}/locations/{location}/cluster/{cluster}/users/{user}.
  final String name;

  /// Input only. Password for the user.
  final String password;

  /// Optional. Type of this user.
  final String userType;

  /// Creates a new [GetUserResult].
  /// [databaseRoles] Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  /// [name] Name of the resource in the form of projects/{project}/locations/{location}/cluster/{cluster}/users/{user}.
  /// [password] Input only. Password for the user.
  /// [userType] Optional. Type of this user.
  GetUserResult({
    required this.databaseRoles,
    required this.name,
    required this.password,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseRoles': databaseRoles,
      'name': name,
      'password': password,
      'userType': userType,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      databaseRoles: (map['databaseRoles'] as List).cast<String>(),
      name: map['name'] as String,
      password: map['password'] as String,
      userType: map['userType'] as String,
    );
  }
}
