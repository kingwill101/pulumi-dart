// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
