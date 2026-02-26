// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
