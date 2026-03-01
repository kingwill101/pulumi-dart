// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthResponseDeploymentmanagerV2beta {
  final String password;
  final String user;

  /// Creates a new [BasicAuthResponseDeploymentmanagerV2beta].
  /// [password] Required.
  /// [user] Required.
  BasicAuthResponseDeploymentmanagerV2beta({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'user': user};
  }

  factory BasicAuthResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return BasicAuthResponseDeploymentmanagerV2beta(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
