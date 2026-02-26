// ignore_for_file: unused_element, unnecessary_cast

import 'connected_repository.dart';
import 'git_source.dart';
import 'repo_source.dart';
import 'storage_source.dart';
import 'storage_source_manifest.dart';

/// Location of the source in a supported storage service.
class Source {
  /// Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  final ConnectedRepository? connectedRepository;

  /// If provided, get the source from this Git repository.
  final GitSource? gitSource;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSource? repoSource;

  /// If provided, get the source from this location in Cloud Storage.
  final StorageSource? storageSource;

  /// If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  final StorageSourceManifest? storageSourceManifest;

  Source({
    this.connectedRepository,
    this.gitSource,
    this.repoSource,
    this.storageSource,
    this.storageSourceManifest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectedRepositoryValue = connectedRepository;
    if (connectedRepositoryValue != null) {
      map['connectedRepository'] = connectedRepositoryValue.toMap();
    }
    final gitSourceValue = gitSource;
    if (gitSourceValue != null) {
      map['gitSource'] = gitSourceValue.toMap();
    }
    final repoSourceValue = repoSource;
    if (repoSourceValue != null) {
      map['repoSource'] = repoSourceValue.toMap();
    }
    final storageSourceValue = storageSource;
    if (storageSourceValue != null) {
      map['storageSource'] = storageSourceValue.toMap();
    }
    final storageSourceManifestValue = storageSourceManifest;
    if (storageSourceManifestValue != null) {
      map['storageSourceManifest'] = storageSourceManifestValue.toMap();
    }
    return map;
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      connectedRepository: map['connectedRepository'] == null
          ? null
          : ConnectedRepository.fromMap(
              (map['connectedRepository'] as Map).cast<String, dynamic>()),
      gitSource: map['gitSource'] == null
          ? null
          : GitSource.fromMap(
              (map['gitSource'] as Map).cast<String, dynamic>()),
      repoSource: map['repoSource'] == null
          ? null
          : RepoSource.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null
          ? null
          : StorageSource.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>()),
      storageSourceManifest: map['storageSourceManifest'] == null
          ? null
          : StorageSourceManifest.fromMap(
              (map['storageSourceManifest'] as Map).cast<String, dynamic>()),
    );
  }
}
