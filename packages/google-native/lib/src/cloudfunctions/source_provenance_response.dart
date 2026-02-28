// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponse {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final String gitUri;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final RepoSourceResponse resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final StorageSourceResponse resolvedStorageSource;

  /// Creates a new [SourceProvenanceResponse].
  /// [gitUri] A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  /// [resolvedRepoSource] A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  /// [resolvedStorageSource] A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  SourceProvenanceResponse({
    required this.gitUri,
    required this.resolvedRepoSource,
    required this.resolvedStorageSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitUri'] = gitUri;
    map['resolvedRepoSource'] = resolvedRepoSource.toMap();
    map['resolvedStorageSource'] = resolvedStorageSource.toMap();
    return map;
  }

  factory SourceProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return SourceProvenanceResponse(
      gitUri: map['gitUri'] as String,
      resolvedRepoSource: RepoSourceResponse.fromMap(
          (map['resolvedRepoSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSource: StorageSourceResponse.fromMap(
          (map['resolvedStorageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
