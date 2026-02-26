// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_repository_remote_repository_config_apt_repository/get_repository_remote_repository_config_apt_repository.dart';
import '../get_repository_remote_repository_config_common_repository/get_repository_remote_repository_config_common_repository.dart';
import '../get_repository_remote_repository_config_docker_repository/get_repository_remote_repository_config_docker_repository.dart';
import '../get_repository_remote_repository_config_maven_repository/get_repository_remote_repository_config_maven_repository.dart';
import '../get_repository_remote_repository_config_npm_repository/get_repository_remote_repository_config_npm_repository.dart';
import '../get_repository_remote_repository_config_python_repository/get_repository_remote_repository_config_python_repository.dart';
import '../get_repository_remote_repository_config_upstream_credential/get_repository_remote_repository_config_upstream_credential.dart';
import '../get_repository_remote_repository_config_yum_repository/get_repository_remote_repository_config_yum_repository.dart';

class GetRepositoryRemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  final List<GetRepositoryRemoteRepositoryConfigAptRepository> aptRepositories;

  /// Specific settings for an Artifact Registory remote repository.
  final List<GetRepositoryRemoteRepositoryConfigCommonRepository>
      commonRepositories;

  /// The description of the remote source.
  final String description;

  /// If true, the remote repository upstream and upstream credentials will
  /// not be validated.
  final bool disableUpstreamValidation;

  /// Specific settings for a Docker remote repository.
  final List<GetRepositoryRemoteRepositoryConfigDockerRepository>
      dockerRepositories;

  /// Specific settings for a Maven remote repository.
  final List<GetRepositoryRemoteRepositoryConfigMavenRepository>
      mavenRepositories;

  /// Specific settings for an Npm remote repository.
  final List<GetRepositoryRemoteRepositoryConfigNpmRepository> npmRepositories;

  /// Specific settings for a Python remote repository.
  final List<GetRepositoryRemoteRepositoryConfigPythonRepository>
      pythonRepositories;

  /// The credentials used to access the remote repository.
  final List<GetRepositoryRemoteRepositoryConfigUpstreamCredential>
      upstreamCredentials;

  /// Specific settings for an Yum remote repository.
  final List<GetRepositoryRemoteRepositoryConfigYumRepository> yumRepositories;

  GetRepositoryRemoteRepositoryConfig({
    required this.aptRepositories,
    required this.commonRepositories,
    required this.description,
    required this.disableUpstreamValidation,
    required this.dockerRepositories,
    required this.mavenRepositories,
    required this.npmRepositories,
    required this.pythonRepositories,
    required this.upstreamCredentials,
    required this.yumRepositories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aptRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigAptRepository,
        Map<String, dynamic>>(aptRepositories, (value) => value.toMap());
    map['commonRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigCommonRepository,
        Map<String, dynamic>>(commonRepositories, (value) => value.toMap());
    map['description'] = description;
    map['disableUpstreamValidation'] = disableUpstreamValidation;
    map['dockerRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigDockerRepository,
        Map<String, dynamic>>(dockerRepositories, (value) => value.toMap());
    map['mavenRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigMavenRepository,
        Map<String, dynamic>>(mavenRepositories, (value) => value.toMap());
    map['npmRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigNpmRepository,
        Map<String, dynamic>>(npmRepositories, (value) => value.toMap());
    map['pythonRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigPythonRepository,
        Map<String, dynamic>>(pythonRepositories, (value) => value.toMap());
    map['upstreamCredentials'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigUpstreamCredential,
        Map<String, dynamic>>(upstreamCredentials, (value) => value.toMap());
    map['yumRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigYumRepository,
        Map<String, dynamic>>(yumRepositories, (value) => value.toMap());
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfig(
      aptRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigAptRepository>(
              map['aptRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigAptRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      commonRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigCommonRepository>(
              map['commonRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigCommonRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      disableUpstreamValidation: map['disableUpstreamValidation'] as bool,
      dockerRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigDockerRepository>(
              map['dockerRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigDockerRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      mavenRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigMavenRepository>(
              map['mavenRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigMavenRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      npmRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigNpmRepository>(
              map['npmRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigNpmRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      pythonRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigPythonRepository>(
              map['pythonRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigPythonRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
      upstreamCredentials: Input.decodeList<
              GetRepositoryRemoteRepositoryConfigUpstreamCredential>(
          map['upstreamCredentials'],
          (value) =>
              GetRepositoryRemoteRepositoryConfigUpstreamCredential.fromMap(
                  (value as Map).cast<String, dynamic>())),
      yumRepositories:
          Input.decodeList<GetRepositoryRemoteRepositoryConfigYumRepository>(
              map['yumRepositories'],
              (value) =>
                  GetRepositoryRemoteRepositoryConfigYumRepository.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
