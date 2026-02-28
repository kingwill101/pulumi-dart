// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
