// ignore_for_file: unused_element, unnecessary_cast

import 'repo_source_cloudfunctions_v2.dart';
import 'storage_source_cloudfunctions_v2.dart';

/// The location of the function source code.
class SourceCloudfunctionsV2 {
  /// If provided, get the source from GitHub repository. This option is valid only for GCF 1st Gen function. Example: https://github.com///blob//
  final String? gitUri;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final RepoSourceCloudfunctionsV2? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceCloudfunctionsV2? storageSource;

  SourceCloudfunctionsV2({
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

  factory SourceCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return SourceCloudfunctionsV2(
      gitUri: map['gitUri'] == null ? null : map['gitUri'] as String,
      repoSource: map['repoSource'] == null
          ? null
          : RepoSourceCloudfunctionsV2.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null
          ? null
          : StorageSourceCloudfunctionsV2.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
