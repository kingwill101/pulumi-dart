// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response3.dart';
import 'storage_source_response3.dart';

/// The location of the function source code.
class SourceResponse3 {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponse3 repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponse3 storageSource;

  SourceResponse3({
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

  factory SourceResponse3.fromMap(Map<String, dynamic> map) {
    return SourceResponse3(
      gitUri: map['gitUri'] as String,
      repoSource: RepoSourceResponse3.fromMap(
          (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: StorageSourceResponse3.fromMap(
          (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
