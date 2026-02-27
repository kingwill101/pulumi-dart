// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response_cloudfunctions_v2beta.dart';
import 'storage_source_response_cloudfunctions_v2beta.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponseCloudfunctionsV2beta {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final String gitUri;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final RepoSourceResponseCloudfunctionsV2beta resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final StorageSourceResponseCloudfunctionsV2beta resolvedStorageSource;

  SourceProvenanceResponseCloudfunctionsV2beta({
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

  factory SourceProvenanceResponseCloudfunctionsV2beta.fromMap(
      Map<String, dynamic> map) {
    return SourceProvenanceResponseCloudfunctionsV2beta(
      gitUri: map['gitUri'] as String,
      resolvedRepoSource: RepoSourceResponseCloudfunctionsV2beta.fromMap(
          (map['resolvedRepoSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSource: StorageSourceResponseCloudfunctionsV2beta.fromMap(
          (map['resolvedStorageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
