// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  UserProfileUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory UserProfileUserSettingsJupyterLabAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
