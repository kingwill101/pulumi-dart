// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  VMwareClusterAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory VMwareClusterAuthorizationAdminUser.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}
