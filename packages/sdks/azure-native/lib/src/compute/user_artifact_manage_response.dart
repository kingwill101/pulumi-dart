// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserArtifactManageResponse {
  /// Required. The path and arguments to install the gallery application. This is limited to 4096 characters.
  final pulumi.Input<String> install;
  /// Required. The path and arguments to remove the gallery application. This is limited to 4096 characters.
  final pulumi.Input<String> remove;
  /// Optional. The path and arguments to update the gallery application. If not present, then update operation will invoke remove command on the previous version and install command on the current version of the gallery application. This is limited to 4096 characters.
  final pulumi.Input<String?>? update;

  /// Creates a new [UserArtifactManageResponse].
  /// [install] Required. The path and arguments to install the gallery application. This is limited to 4096 characters.
  /// [remove] Required. The path and arguments to remove the gallery application. This is limited to 4096 characters.
  /// [update] Optional. The path and arguments to update the gallery application. If not present, then update operation will invoke remove command on the previous version and install command on the current version of the gallery application. This is limited to 4096 characters.
  const UserArtifactManageResponse({
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
      install: pulumi.Input.fromValue(map['install'] as String),
      remove: pulumi.Input.fromValue(map['remove'] as String),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
