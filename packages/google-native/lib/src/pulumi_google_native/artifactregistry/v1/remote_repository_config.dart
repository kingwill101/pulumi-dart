// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository.dart';
import 'docker_repository.dart';
import 'maven_repository.dart';
import 'npm_repository.dart';
import 'python_repository.dart';
import 'upstream_credentials.dart';
import 'yum_repository.dart';

/// Remote repository configuration.
class RemoteRepositoryConfig {
  /// Specific settings for an Apt remote repository.
  final AptRepository? aptRepository;

  /// The description of the remote source.
  final String? description;

  /// Specific settings for a Docker remote repository.
  final DockerRepository? dockerRepository;

  /// Specific settings for a Maven remote repository.
  final MavenRepository? mavenRepository;

  /// Specific settings for an Npm remote repository.
  final NpmRepository? npmRepository;

  /// Specific settings for a Python remote repository.
  final PythonRepository? pythonRepository;

  /// Optional. The credentials used to access the remote repository.
  final UpstreamCredentials? upstreamCredentials;

  /// Specific settings for a Yum remote repository.
  final YumRepository? yumRepository;

  RemoteRepositoryConfig({
    this.aptRepository,
    this.description,
    this.dockerRepository,
    this.mavenRepository,
    this.npmRepository,
    this.pythonRepository,
    this.upstreamCredentials,
    this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aptRepositoryValue = aptRepository;
    if (aptRepositoryValue != null) {
      map['aptRepository'] = aptRepositoryValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dockerRepositoryValue = dockerRepository;
    if (dockerRepositoryValue != null) {
      map['dockerRepository'] = dockerRepositoryValue.toMap();
    }
    final mavenRepositoryValue = mavenRepository;
    if (mavenRepositoryValue != null) {
      map['mavenRepository'] = mavenRepositoryValue.toMap();
    }
    final npmRepositoryValue = npmRepository;
    if (npmRepositoryValue != null) {
      map['npmRepository'] = npmRepositoryValue.toMap();
    }
    final pythonRepositoryValue = pythonRepository;
    if (pythonRepositoryValue != null) {
      map['pythonRepository'] = pythonRepositoryValue.toMap();
    }
    final upstreamCredentialsValue = upstreamCredentials;
    if (upstreamCredentialsValue != null) {
      map['upstreamCredentials'] = upstreamCredentialsValue.toMap();
    }
    final yumRepositoryValue = yumRepository;
    if (yumRepositoryValue != null) {
      map['yumRepository'] = yumRepositoryValue.toMap();
    }
    return map;
  }

  factory RemoteRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RemoteRepositoryConfig(
      aptRepository: map['aptRepository'] == null
          ? null
          : AptRepository.fromMap(
              (map['aptRepository'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      dockerRepository: map['dockerRepository'] == null
          ? null
          : DockerRepository.fromMap(
              (map['dockerRepository'] as Map).cast<String, dynamic>()),
      mavenRepository: map['mavenRepository'] == null
          ? null
          : MavenRepository.fromMap(
              (map['mavenRepository'] as Map).cast<String, dynamic>()),
      npmRepository: map['npmRepository'] == null
          ? null
          : NpmRepository.fromMap(
              (map['npmRepository'] as Map).cast<String, dynamic>()),
      pythonRepository: map['pythonRepository'] == null
          ? null
          : PythonRepository.fromMap(
              (map['pythonRepository'] as Map).cast<String, dynamic>()),
      upstreamCredentials: map['upstreamCredentials'] == null
          ? null
          : UpstreamCredentials.fromMap(
              (map['upstreamCredentials'] as Map).cast<String, dynamic>()),
      yumRepository: map['yumRepository'] == null
          ? null
          : YumRepository.fromMap(
              (map['yumRepository'] as Map).cast<String, dynamic>()),
    );
  }
}
