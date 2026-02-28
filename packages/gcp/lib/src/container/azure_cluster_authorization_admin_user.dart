// ignore_for_file: unused_element, unnecessary_cast


class AzureClusterAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [AzureClusterAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  AzureClusterAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory AzureClusterAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return AzureClusterAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}

