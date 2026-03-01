// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
