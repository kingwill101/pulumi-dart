// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository_response.dart';
import 'docker_repository_response.dart';
import 'maven_repository_response.dart';
import 'npm_repository_response.dart';
import 'python_repository_response.dart';
import 'upstream_credentials_response.dart';
import 'yum_repository_response.dart';

/// Remote repository configuration.
class RemoteRepositoryConfigResponse {
  /// Specific settings for an Apt remote repository.
  final AptRepositoryResponse aptRepository;
  /// The description of the remote source.
  final String description;
  /// Specific settings for a Docker remote repository.
  final DockerRepositoryResponse dockerRepository;
  /// Specific settings for a Maven remote repository.
  final MavenRepositoryResponse mavenRepository;
  /// Specific settings for an Npm remote repository.
  final NpmRepositoryResponse npmRepository;
  /// Specific settings for a Python remote repository.
  final PythonRepositoryResponse pythonRepository;
  /// Optional. The credentials used to access the remote repository.
  final UpstreamCredentialsResponse upstreamCredentials;
  /// Specific settings for a Yum remote repository.
  final YumRepositoryResponse yumRepository;

  /// Creates a new [RemoteRepositoryConfigResponse].
  /// [aptRepository] Specific settings for an Apt remote repository.
  /// [description] The description of the remote source.
  /// [dockerRepository] Specific settings for a Docker remote repository.
  /// [mavenRepository] Specific settings for a Maven remote repository.
  /// [npmRepository] Specific settings for an Npm remote repository.
  /// [pythonRepository] Specific settings for a Python remote repository.
  /// [upstreamCredentials] Optional. The credentials used to access the remote repository.
  /// [yumRepository] Specific settings for a Yum remote repository.
  RemoteRepositoryConfigResponse({
    required this.aptRepository,
    required this.description,
    required this.dockerRepository,
    required this.mavenRepository,
    required this.npmRepository,
    required this.pythonRepository,
    required this.upstreamCredentials,
    required this.yumRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aptRepository': aptRepository.toMap(),
      'description': description,
      'dockerRepository': dockerRepository.toMap(),
      'mavenRepository': mavenRepository.toMap(),
      'npmRepository': npmRepository.toMap(),
      'pythonRepository': pythonRepository.toMap(),
      'upstreamCredentials': upstreamCredentials.toMap(),
      'yumRepository': yumRepository.toMap(),
    };
  }

  factory RemoteRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RemoteRepositoryConfigResponse(
      aptRepository: AptRepositoryResponse.fromMap((map['aptRepository'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      dockerRepository: DockerRepositoryResponse.fromMap((map['dockerRepository'] as Map).cast<String, dynamic>()),
      mavenRepository: MavenRepositoryResponse.fromMap((map['mavenRepository'] as Map).cast<String, dynamic>()),
      npmRepository: NpmRepositoryResponse.fromMap((map['npmRepository'] as Map).cast<String, dynamic>()),
      pythonRepository: PythonRepositoryResponse.fromMap((map['pythonRepository'] as Map).cast<String, dynamic>()),
      upstreamCredentials: UpstreamCredentialsResponse.fromMap((map['upstreamCredentials'] as Map).cast<String, dynamic>()),
      yumRepository: YumRepositoryResponse.fromMap((map['yumRepository'] as Map).cast<String, dynamic>()),
    );
  }
}

