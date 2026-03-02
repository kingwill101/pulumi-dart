// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [UserProfileUserSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  UserProfileUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryUrl': repositoryUrl,
    };
  }

  factory UserProfileUserSettingsJupyterServerAppSettingsCodeRepository.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: (map['repositoryUrl'] as String).input(),
    );
  }
}

