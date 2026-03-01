// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
