// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_repository_remote_repository_config_apt_repository_public_repository/get_repository_remote_repository_config_apt_repository_public_repository.dart';

class GetRepositoryRemoteRepositoryConfigAptRepository {
  /// One of the publicly available Apt repositories supported by Artifact Registry.
  final List<GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>
      publicRepositories;

  GetRepositoryRemoteRepositoryConfigAptRepository({
    required this.publicRepositories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepositories'] = Input.encodeList<
        GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository,
        Map<String, dynamic>>(publicRepositories, (value) => value.toMap());
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigAptRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigAptRepository(
      publicRepositories: Input.decodeList<
              GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository>(
          map['publicRepositories'],
          (value) =>
              GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
