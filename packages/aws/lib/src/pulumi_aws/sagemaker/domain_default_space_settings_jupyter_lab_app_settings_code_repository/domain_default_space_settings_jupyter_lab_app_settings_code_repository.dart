// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
