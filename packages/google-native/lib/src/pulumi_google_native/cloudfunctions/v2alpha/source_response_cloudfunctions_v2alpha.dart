// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response_cloudfunctions_v2alpha.dart';
import 'storage_source_response_cloudfunctions_v2alpha.dart';

/// The location of the function source code.
class SourceResponseCloudfunctionsV2alpha {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponseCloudfunctionsV2alpha repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponseCloudfunctionsV2alpha storageSource;

  SourceResponseCloudfunctionsV2alpha({
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

  factory SourceResponseCloudfunctionsV2alpha.fromMap(
      Map<String, dynamic> map) {
    return SourceResponseCloudfunctionsV2alpha(
      gitUri: map['gitUri'] as String,
      repoSource: RepoSourceResponseCloudfunctionsV2alpha.fromMap(
          (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: StorageSourceResponseCloudfunctionsV2alpha.fromMap(
          (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
