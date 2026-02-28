// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_cloudfunctions_v2alpha.dart';
import 'storage_source_cloudfunctions_v2alpha.dart';

/// The location of the function source code.
class SourceCloudfunctionsV2alpha {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String? gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceCloudfunctionsV2alpha? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceCloudfunctionsV2alpha? storageSource;

  /// Creates a new [SourceCloudfunctionsV2alpha].
  /// [gitUri] If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceCloudfunctionsV2alpha({
    this.gitUri,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gitUriValue = gitUri;
    if (gitUriValue != null) {
      map['gitUri'] = gitUriValue;
    }
    final repoSourceValue = repoSource;
    if (repoSourceValue != null) {
      map['repoSource'] = repoSourceValue.toMap();
    }
    final storageSourceValue = storageSource;
    if (storageSourceValue != null) {
      map['storageSource'] = storageSourceValue.toMap();
    }
    return map;
  }

  factory SourceCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SourceCloudfunctionsV2alpha(
      gitUri: map['gitUri'] == null ? null : map['gitUri'] as String,
      repoSource: map['repoSource'] == null
          ? null
          : RepoSourceCloudfunctionsV2alpha.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null
          ? null
          : StorageSourceCloudfunctionsV2alpha.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
