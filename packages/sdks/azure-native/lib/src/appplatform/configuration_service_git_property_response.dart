// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_service_git_repository_response.dart';

/// Property of git environment.
class ConfigurationServiceGitPropertyResponse {
  /// Repositories of Application Configuration Service git property.
  final pulumi.Input<List<ConfigurationServiceGitRepositoryResponse>>? repositories;

  /// Creates a new [ConfigurationServiceGitPropertyResponse].
  /// [repositories] Repositories of Application Configuration Service git property.
  ConfigurationServiceGitPropertyResponse({
    this.repositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationServiceGitRepositoryResponse>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<ConfigurationServiceGitRepositoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationServiceGitPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceGitPropertyResponse(
      repositories: map['repositories'] == null ? null : (pulumi.Input.decodeList<ConfigurationServiceGitRepositoryResponse>(map['repositories']!, (value) => ConfigurationServiceGitRepositoryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

