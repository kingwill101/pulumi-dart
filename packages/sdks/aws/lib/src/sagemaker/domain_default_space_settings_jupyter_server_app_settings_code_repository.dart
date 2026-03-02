// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryUrl': repositoryUrl,
    };
  }

  factory DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository(
      repositoryUrl: (map['repositoryUrl'] as String).input(),
    );
  }
}

