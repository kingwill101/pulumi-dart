// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository {
  /// The URL of the Git repository.
  final pulumi.Input<String> repositoryUrl;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository].
  /// [repositoryUrl] The URL of the Git repository.
  DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository({
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryUrl': repositoryUrl};
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsCodeRepository(
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
    );
  }
}
