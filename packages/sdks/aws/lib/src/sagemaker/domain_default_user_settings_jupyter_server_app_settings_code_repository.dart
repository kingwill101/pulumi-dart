// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  const DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryUrl': repositoryUrl,
    };
  }

  factory DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
    );
  }
}
