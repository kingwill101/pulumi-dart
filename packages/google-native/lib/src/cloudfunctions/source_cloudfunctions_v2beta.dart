// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_cloudfunctions_v2beta.dart';
import 'storage_source_cloudfunctions_v2beta.dart';

/// The location of the function source code.
class SourceCloudfunctionsV2beta {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String? gitUri;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceCloudfunctionsV2beta? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceCloudfunctionsV2beta? storageSource;

  /// Creates a new [SourceCloudfunctionsV2beta].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceCloudfunctionsV2beta({
    this.gitUri,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitUri': ?gitUri,
      'repoSource': ?repoSource == null ? null : repoSource!.toMap(),
      'storageSource': ?storageSource == null ? null : storageSource!.toMap(),
    };
  }

  factory SourceCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SourceCloudfunctionsV2beta(
      gitUri: map['gitUri'] == null ? null : map['gitUri'] as String,
      repoSource: map['repoSource'] == null ? null : RepoSourceCloudfunctionsV2beta.fromMap((map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null ? null : StorageSourceCloudfunctionsV2beta.fromMap((map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}

