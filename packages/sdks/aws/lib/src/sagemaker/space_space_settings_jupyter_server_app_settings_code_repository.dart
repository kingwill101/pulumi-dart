// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
    );
  }
}
