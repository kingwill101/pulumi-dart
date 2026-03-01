// ignore_for_file: unused_element, unnecessary_cast


class GetSaslUsersUser {
  final String id;
  /// The password of the user.
  final String password;
  /// (Available since v1.260.0) The type of the user.
  final String type;
  /// The username of the user.
  final String username;

  /// Creates a new [GetSaslUsersUser].
  /// [id] Required.
  /// [password] The password of the user.
  /// [type] (Available since v1.260.0) The type of the user.
  /// [username] The username of the user.
  GetSaslUsersUser({
    required this.id,
    required this.password,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'password': password,
      'type': type,
      'username': username,
    };
  }

  factory GetSaslUsersUser.fromMap(Map<String, dynamic> map) {
    return GetSaslUsersUser(
      id: map['id'] as String,
      password: map['password'] as String,
      type: map['type'] as String,
      username: map['username'] as String,
    );
  }
}

