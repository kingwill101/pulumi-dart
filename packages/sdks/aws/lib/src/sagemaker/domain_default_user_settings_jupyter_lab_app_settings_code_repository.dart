// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  const DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryUrl': repositoryUrl,
    };
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
    );
  }
}

