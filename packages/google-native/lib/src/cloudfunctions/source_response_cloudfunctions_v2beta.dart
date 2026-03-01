// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_response_cloudfunctions_v2beta.dart';
import 'storage_source_response_cloudfunctions_v2beta.dart';

/// The location of the function source code.
class SourceResponseCloudfunctionsV2beta {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceResponseCloudfunctionsV2beta repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponseCloudfunctionsV2beta storageSource;

  /// Creates a new [SourceResponseCloudfunctionsV2beta].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceResponseCloudfunctionsV2beta({
    required this.gitUri,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': gitUri,
      'repoSource': repoSource.toMap(),
      'storageSource': storageSource.toMap(),
    };
  }

  factory SourceResponseCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SourceResponseCloudfunctionsV2beta(
      gitUri: map['gitUri'] as String,
      repoSource: RepoSourceResponseCloudfunctionsV2beta.fromMap(
        (map['repoSource'] as Map).cast<String, dynamic>(),
      ),
      storageSource: StorageSourceResponseCloudfunctionsV2beta.fromMap(
        (map['storageSource'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
