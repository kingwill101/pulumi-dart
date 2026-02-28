// ignore_for_file: unused_element, unnecessary_cast

import 'connected_repository_response.dart';
import 'git_source_response.dart';
import 'repo_source_response.dart';
import 'storage_source_manifest_response.dart';
import 'storage_source_response.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponse {
  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file.
  final Map<String, String> fileHashes;

  /// A copy of the build's `source.connected_repository`, if exists, with any revisions resolved.
  final ConnectedRepositoryResponse resolvedConnectedRepository;

  /// A copy of the build's `source.git_source`, if exists, with any revisions resolved.
  final GitSourceResponse resolvedGitSource;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final RepoSourceResponse resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final StorageSourceResponse resolvedStorageSource;

  /// A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview.
  final StorageSourceManifestResponse resolvedStorageSourceManifest;

  /// Creates a new [SourceProvenanceResponse].
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file.
  /// [resolvedConnectedRepository] A copy of the build's `source.connected_repository`, if exists, with any revisions resolved.
  /// [resolvedGitSource] A copy of the build's `source.git_source`, if exists, with any revisions resolved.
  /// [resolvedRepoSource] A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  /// [resolvedStorageSource] A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  /// [resolvedStorageSourceManifest] A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview.
  SourceProvenanceResponse({
    required this.fileHashes,
    required this.resolvedConnectedRepository,
    required this.resolvedGitSource,
    required this.resolvedRepoSource,
    required this.resolvedStorageSource,
    required this.resolvedStorageSourceManifest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileHashes'] = fileHashes;
    map['resolvedConnectedRepository'] = resolvedConnectedRepository.toMap();
    map['resolvedGitSource'] = resolvedGitSource.toMap();
    map['resolvedRepoSource'] = resolvedRepoSource.toMap();
    map['resolvedStorageSource'] = resolvedStorageSource.toMap();
    map['resolvedStorageSourceManifest'] =
        resolvedStorageSourceManifest.toMap();
    return map;
  }

  factory SourceProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return SourceProvenanceResponse(
      fileHashes: (map['fileHashes'] as Map).cast<String, String>(),
      resolvedConnectedRepository: ConnectedRepositoryResponse.fromMap(
          (map['resolvedConnectedRepository'] as Map).cast<String, dynamic>()),
      resolvedGitSource: GitSourceResponse.fromMap(
          (map['resolvedGitSource'] as Map).cast<String, dynamic>()),
      resolvedRepoSource: RepoSourceResponse.fromMap(
          (map['resolvedRepoSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSource: StorageSourceResponse.fromMap(
          (map['resolvedStorageSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSourceManifest: StorageSourceManifestResponse.fromMap(
          (map['resolvedStorageSourceManifest'] as Map)
              .cast<String, dynamic>()),
    );
  }
}
