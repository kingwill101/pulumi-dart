// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
