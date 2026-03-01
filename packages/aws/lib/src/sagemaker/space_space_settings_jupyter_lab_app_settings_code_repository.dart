// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
