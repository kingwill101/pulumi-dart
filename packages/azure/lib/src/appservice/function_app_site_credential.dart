// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSiteCredential {
  /// The password associated with the username, which can be used to publish to this App Service.
  final String? password;
  /// The username which can be used to publish to this App Service
  final String? username;

  /// Creates a new [FunctionAppSiteCredential].
  /// [password] The password associated with the username, which can be used to publish to this App Service.
  /// [username] The username which can be used to publish to this App Service
  FunctionAppSiteCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory FunctionAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return FunctionAppSiteCredential(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

