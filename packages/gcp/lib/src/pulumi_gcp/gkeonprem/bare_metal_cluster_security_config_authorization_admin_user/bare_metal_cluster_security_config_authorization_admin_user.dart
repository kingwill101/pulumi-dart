// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterSecurityConfigAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  BareMetalClusterSecurityConfigAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory BareMetalClusterSecurityConfigAuthorizationAdminUser.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterSecurityConfigAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}
