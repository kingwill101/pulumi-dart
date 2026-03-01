// ignore_for_file: unused_element, unnecessary_cast


class GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth {
  /// The password used to access the HTTP Basic Authentication Git repository server.
  final String password;
  /// The username used to access the HTTP Basic Authentication Git repository server.
  final String username;

  /// Creates a new [GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth].
  /// [password] The password used to access the HTTP Basic Authentication Git repository server.
  /// [username] The username used to access the HTTP Basic Authentication Git repository server.
  GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

