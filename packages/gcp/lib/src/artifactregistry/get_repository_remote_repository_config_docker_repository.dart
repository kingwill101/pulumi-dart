// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_docker_repository_custom_repository.dart';

class GetRepositoryRemoteRepositoryConfigDockerRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  final List<
    GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository
  >
  customRepositories;

  /// Address of the remote repository. Possible values: ["DOCKER_HUB"]
  final String publicRepository;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigDockerRepository].
  /// [customRepositories] [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  /// [publicRepository] Address of the remote repository. Possible values: ["DOCKER_HUB"]
  GetRepositoryRemoteRepositoryConfigDockerRepository({
    required this.customRepositories,
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRepositories':
          pulumi.Input.encodeList<
            GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository,
            Map<String, dynamic>
          >(customRepositories, (value) => value.toMap()),
      'publicRepository': publicRepository,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigDockerRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigDockerRepository(
      customRepositories:
          pulumi.Input.decodeList<
            GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository
          >(
            map['customRepositories'],
            (value) =>
                GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      publicRepository: map['publicRepository'] as String,
    );
  }
}
