// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterSecurityConfigAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  BareMetalAdminClusterSecurityConfigAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory BareMetalAdminClusterSecurityConfigAuthorizationAdminUser.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterSecurityConfigAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}
