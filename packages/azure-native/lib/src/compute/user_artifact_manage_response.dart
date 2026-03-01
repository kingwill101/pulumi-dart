// ignore_for_file: unused_element, unnecessary_cast


class UserArtifactManageResponse {
  /// Required. The path and arguments to install the gallery application. This is limited to 4096 characters.
  final String install;
  /// Required. The path and arguments to remove the gallery application. This is limited to 4096 characters.
  final String remove;
  /// Optional. The path and arguments to update the gallery application. If not present, then update operation will invoke remove command on the previous version and install command on the current version of the gallery application. This is limited to 4096 characters.
  final String? update;

  /// Creates a new [UserArtifactManageResponse].
  /// [install] Required. The path and arguments to install the gallery application. This is limited to 4096 characters.
  /// [remove] Required. The path and arguments to remove the gallery application. This is limited to 4096 characters.
  /// [update] Optional. The path and arguments to update the gallery application. If not present, then update operation will invoke remove command on the previous version and install command on the current version of the gallery application. This is limited to 4096 characters.
  UserArtifactManageResponse({
    required this.install,
    required this.remove,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'install': install,
      'remove': remove,
      'update': ?update,
    };
  }

  factory UserArtifactManageResponse.fromMap(Map<String, dynamic> map) {
    return UserArtifactManageResponse(
      install: map['install'] as String,
      remove: map['remove'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}

