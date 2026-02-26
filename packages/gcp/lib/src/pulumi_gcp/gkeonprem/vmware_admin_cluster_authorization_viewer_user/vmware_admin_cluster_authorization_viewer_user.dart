// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterAuthorizationViewerUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  VmwareAdminClusterAuthorizationViewerUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['username'] = username;
    return map;
  }

  factory VmwareAdminClusterAuthorizationViewerUser.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterAuthorizationViewerUser(
      username: map['username'] as String,
    );
  }
}
