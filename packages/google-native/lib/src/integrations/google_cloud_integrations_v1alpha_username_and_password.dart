// ignore_for_file: unused_element, unnecessary_cast

/// Username and password pair.
class GoogleCloudIntegrationsV1alphaUsernameAndPassword {
  /// Password to be used
  final String? password;

  /// Username to be used
  final String? username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaUsernameAndPassword].
  /// [password] Password to be used
  /// [username] Username to be used
  GoogleCloudIntegrationsV1alphaUsernameAndPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'username': ?username};
  }

  factory GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaUsernameAndPassword(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
