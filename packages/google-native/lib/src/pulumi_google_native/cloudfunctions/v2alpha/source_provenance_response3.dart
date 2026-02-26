// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response3.dart';
import 'storage_source_response3.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponse3 {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final String gitUri;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final RepoSourceResponse3 resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final StorageSourceResponse3 resolvedStorageSource;

  SourceProvenanceResponse3({
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

  factory SourceProvenanceResponse3.fromMap(Map<String, dynamic> map) {
    return SourceProvenanceResponse3(
      gitUri: map['gitUri'] as String,
      resolvedRepoSource: RepoSourceResponse3.fromMap(
          (map['resolvedRepoSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSource: StorageSourceResponse3.fromMap(
          (map['resolvedStorageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
