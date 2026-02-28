// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
