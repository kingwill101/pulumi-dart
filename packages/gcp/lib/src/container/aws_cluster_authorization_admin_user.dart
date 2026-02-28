// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [AwsClusterAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  AwsClusterAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory AwsClusterAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return AwsClusterAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}
