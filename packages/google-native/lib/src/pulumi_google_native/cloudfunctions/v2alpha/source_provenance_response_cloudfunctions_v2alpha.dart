// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response_cloudfunctions_v2alpha.dart';
import 'storage_source_response_cloudfunctions_v2alpha.dart';

/// Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
class SourceProvenanceResponseCloudfunctionsV2alpha {
  /// A copy of the build's `source.git_uri`, if exists, with any commits resolved.
  final String gitUri;

  /// A copy of the build's `source.repo_source`, if exists, with any revisions resolved.
  final RepoSourceResponseCloudfunctionsV2alpha resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any generations resolved.
  final StorageSourceResponseCloudfunctionsV2alpha resolvedStorageSource;

  SourceProvenanceResponseCloudfunctionsV2alpha({
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

  factory SourceProvenanceResponseCloudfunctionsV2alpha.fromMap(
      Map<String, dynamic> map) {
    return SourceProvenanceResponseCloudfunctionsV2alpha(
      gitUri: map['gitUri'] as String,
      resolvedRepoSource: RepoSourceResponseCloudfunctionsV2alpha.fromMap(
          (map['resolvedRepoSource'] as Map).cast<String, dynamic>()),
      resolvedStorageSource: StorageSourceResponseCloudfunctionsV2alpha.fromMap(
          (map['resolvedStorageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
