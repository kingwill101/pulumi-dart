// ignore_for_file: unused_element, unnecessary_cast

import 'connected_repository_response.dart';
import 'git_source_response.dart';
import 'repo_source_response.dart';
import 'storage_source_manifest_response.dart';
import 'storage_source_response.dart';

/// Location of the source in a supported storage service.
class SourceResponse {
  /// Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  final ConnectedRepositoryResponse connectedRepository;

  /// If provided, get the source from this Git repository.
  final GitSourceResponse gitSource;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponse repoSource;

  /// If provided, get the source from this location in Cloud Storage.
  final StorageSourceResponse storageSource;

  /// If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  final StorageSourceManifestResponse storageSourceManifest;

  /// Creates a new [SourceResponse].
  /// [connectedRepository] Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  /// [gitSource] If provided, get the source from this Git repository.
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Cloud Storage.
  /// [storageSourceManifest] If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  SourceResponse({
    required this.connectedRepository,
    required this.gitSource,
    required this.repoSource,
    required this.storageSource,
    required this.storageSourceManifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepository': connectedRepository.toMap(),
      'gitSource': gitSource.toMap(),
      'repoSource': repoSource.toMap(),
      'storageSource': storageSource.toMap(),
      'storageSourceManifest': storageSourceManifest.toMap(),
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      connectedRepository: ConnectedRepositoryResponse.fromMap(
        (map['connectedRepository'] as Map).cast<String, dynamic>(),
      ),
      gitSource: GitSourceResponse.fromMap(
        (map['gitSource'] as Map).cast<String, dynamic>(),
      ),
      repoSource: RepoSourceResponse.fromMap(
        (map['repoSource'] as Map).cast<String, dynamic>(),
      ),
      storageSource: StorageSourceResponse.fromMap(
        (map['storageSource'] as Map).cast<String, dynamic>(),
      ),
      storageSourceManifest: StorageSourceManifestResponse.fromMap(
        (map['storageSourceManifest'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
