// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [UserProfileUserSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  UserProfileUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory UserProfileUserSettingsJupyterServerAppSettingsCodeRepository.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
