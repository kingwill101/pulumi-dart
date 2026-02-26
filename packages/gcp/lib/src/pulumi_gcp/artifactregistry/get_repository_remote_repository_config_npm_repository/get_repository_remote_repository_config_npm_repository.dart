// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_repository_remote_repository_config_npm_repository_custom_repository/get_repository_remote_repository_config_npm_repository_custom_repository.dart';

class GetRepositoryRemoteRepositoryConfigNpmRepository {
  /// [Deprecated, please use commonRepository instead] Settings for a remote repository with a custom uri.
  final List<GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository>
      customRepositories;

  /// Address of the remote repository. Possible values: ["NPMJS"]
  final String publicRepository;

  GetRepositoryRemoteRepositoryConfigNpmRepository({
    required this.customRepositories,
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository,
        Map<String, dynamic>>(customRepositories, (value) => value.toMap());
    map['publicRepository'] = publicRepository;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigNpmRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigNpmRepository(
      customRepositories: Input.decodeList<
              GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository>(
          map['customRepositories'],
          (value) =>
              GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository
                  .fromMap((value as Map).cast<String, dynamic>())),
      publicRepository: map['publicRepository'] as String,
    );
  }
}
