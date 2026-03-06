// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_git_repository.dart';

/// Property of git environment.
class ConfigurationServiceGitProperty {
  /// Repositories of Application Configuration Service git property.
  final pulumi.Input<List<ConfigurationServiceGitRepository>>? repositories;

  /// Creates a new [ConfigurationServiceGitProperty].
  /// [repositories] Repositories of Application Configuration Service git property.
  const ConfigurationServiceGitProperty({
    this.repositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationServiceGitRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<ConfigurationServiceGitRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationServiceGitProperty.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceGitProperty(
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationServiceGitRepository>(guardedValue, (value) => ConfigurationServiceGitRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

