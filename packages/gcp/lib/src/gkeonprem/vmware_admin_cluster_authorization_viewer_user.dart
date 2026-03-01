// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterAuthorizationViewerUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [VmwareAdminClusterAuthorizationViewerUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  VmwareAdminClusterAuthorizationViewerUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory VmwareAdminClusterAuthorizationViewerUser.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAuthorizationViewerUser(
      username: map['username'] as String,
    );
  }
}

