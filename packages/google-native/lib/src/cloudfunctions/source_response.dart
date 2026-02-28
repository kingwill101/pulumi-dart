// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// The location of the function source code.
class SourceResponse {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponse repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponse storageSource;

  /// Creates a new [SourceResponse].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceResponse({
    required this.gitUri,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitUri'] = gitUri;
    map['repoSource'] = repoSource.toMap();
    map['storageSource'] = storageSource.toMap();
    return map;
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      gitUri: map['gitUri'] as String,
      repoSource: RepoSourceResponse.fromMap(
          (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: StorageSourceResponse.fromMap(
          (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
