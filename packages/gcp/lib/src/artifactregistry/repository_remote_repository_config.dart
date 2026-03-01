// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_apt_repository.dart';
import 'repository_remote_repository_config_common_repository.dart';
import 'repository_remote_repository_config_docker_repository.dart';
import 'repository_remote_repository_config_maven_repository.dart';
import 'repository_remote_repository_config_npm_repository.dart';
import 'repository_remote_repository_config_python_repository.dart';
import 'repository_remote_repository_config_upstream_credentials.dart';
import 'repository_remote_repository_config_yum_repository.dart';

class RepositoryRemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigAptRepository? aptRepository;

  /// Specific settings for an Artifact Registory remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigCommonRepository? commonRepository;

  /// The description of the remote source.
  final String? description;

  /// If true, the remote repository upstream and upstream credentials will
  /// not be validated.
  final bool? disableUpstreamValidation;

  /// Specific settings for a Docker remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigDockerRepository? dockerRepository;

  /// Specific settings for a Maven remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigMavenRepository? mavenRepository;

  /// Specific settings for an Npm remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigNpmRepository? npmRepository;

  /// Specific settings for a Python remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigPythonRepository? pythonRepository;

  /// The credentials used to access the remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigUpstreamCredentials?
  upstreamCredentials;

  /// Specific settings for an Yum remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigYumRepository? yumRepository;

  /// Creates a new [RepositoryRemoteRepositoryConfig].
  /// [aptRepository] Specific settings for an Apt remote repository.
  /// [commonRepository] Specific settings for an Artifact Registory remote repository.
  /// [description] The description of the remote source.
  /// [disableUpstreamValidation] If true, the remote repository upstream and upstream credentials will
  /// [dockerRepository] Specific settings for a Docker remote repository.
  /// [mavenRepository] Specific settings for a Maven remote repository.
  /// [npmRepository] Specific settings for an Npm remote repository.
  /// [pythonRepository] Specific settings for a Python remote repository.
  /// [upstreamCredentials] The credentials used to access the remote repository.
  /// [yumRepository] Specific settings for an Yum remote repository.
  RepositoryRemoteRepositoryConfig({
    this.aptRepository,
    this.commonRepository,
    this.description,
    this.disableUpstreamValidation,
    this.dockerRepository,
    this.mavenRepository,
    this.npmRepository,
    this.pythonRepository,
    this.upstreamCredentials,
    this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepository': ?aptRepository == null ? null : aptRepository!.toMap(),
      'commonRepository': ?commonRepository == null
          ? null
          : commonRepository!.toMap(),
      'description': ?description,
      'disableUpstreamValidation': ?disableUpstreamValidation,
      'dockerRepository': ?dockerRepository == null
          ? null
          : dockerRepository!.toMap(),
      'mavenRepository': ?mavenRepository == null
          ? null
          : mavenRepository!.toMap(),
      'npmRepository': ?npmRepository == null ? null : npmRepository!.toMap(),
      'pythonRepository': ?pythonRepository == null
          ? null
          : pythonRepository!.toMap(),
      'upstreamCredentials': ?upstreamCredentials == null
          ? null
          : upstreamCredentials!.toMap(),
      'yumRepository': ?yumRepository == null ? null : yumRepository!.toMap(),
    };
  }

  factory RepositoryRemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfig(
      aptRepository: map['aptRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigAptRepository.fromMap(
              (map['aptRepository'] as Map).cast<String, dynamic>(),
            ),
      commonRepository: map['commonRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigCommonRepository.fromMap(
              (map['commonRepository'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      disableUpstreamValidation: map['disableUpstreamValidation'] == null
          ? null
          : map['disableUpstreamValidation'] as bool,
      dockerRepository: map['dockerRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigDockerRepository.fromMap(
              (map['dockerRepository'] as Map).cast<String, dynamic>(),
            ),
      mavenRepository: map['mavenRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigMavenRepository.fromMap(
              (map['mavenRepository'] as Map).cast<String, dynamic>(),
            ),
      npmRepository: map['npmRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigNpmRepository.fromMap(
              (map['npmRepository'] as Map).cast<String, dynamic>(),
            ),
      pythonRepository: map['pythonRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigPythonRepository.fromMap(
              (map['pythonRepository'] as Map).cast<String, dynamic>(),
            ),
      upstreamCredentials: map['upstreamCredentials'] == null
          ? null
          : RepositoryRemoteRepositoryConfigUpstreamCredentials.fromMap(
              (map['upstreamCredentials'] as Map).cast<String, dynamic>(),
            ),
      yumRepository: map['yumRepository'] == null
          ? null
          : RepositoryRemoteRepositoryConfigYumRepository.fromMap(
              (map['yumRepository'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
