// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthDeploymentmanagerV2beta {
  final String? password;
  final String? user;

  /// Creates a new [BasicAuthDeploymentmanagerV2beta].
  /// [password] Optional.
  /// [user] Optional.
  BasicAuthDeploymentmanagerV2beta({this.password, this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'user': ?user};
  }

  factory BasicAuthDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return BasicAuthDeploymentmanagerV2beta(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}
