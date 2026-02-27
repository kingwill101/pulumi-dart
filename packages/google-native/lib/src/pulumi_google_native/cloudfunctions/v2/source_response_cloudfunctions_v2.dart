// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response_cloudfunctions_v2.dart';
import 'storage_source_response_cloudfunctions_v2.dart';

/// The location of the function source code.
class SourceResponseCloudfunctionsV2 {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponseCloudfunctionsV2 repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponseCloudfunctionsV2 storageSource;

  SourceResponseCloudfunctionsV2({
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

  factory SourceResponseCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return SourceResponseCloudfunctionsV2(
      gitUri: map['gitUri'] as String,
      repoSource: RepoSourceResponseCloudfunctionsV2.fromMap(
          (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: StorageSourceResponseCloudfunctionsV2.fromMap(
          (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
