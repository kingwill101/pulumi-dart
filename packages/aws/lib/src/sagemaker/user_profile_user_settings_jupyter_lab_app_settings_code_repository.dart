// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final String repositoryUrl;

  /// Creates a new [UserProfileUserSettingsJupyterLabAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  UserProfileUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory UserProfileUserSettingsJupyterLabAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
