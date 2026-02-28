// ignore_for_file: unused_element, unnecessary_cast

import 'function_build_config_source_repo_source.dart';
import 'function_build_config_source_storage_source.dart';

class FunctionBuildConfigSource {
  /// If provided, get the source from this location in a Cloud Source Repository.
  /// Structure is documented below.
  final FunctionBuildConfigSourceRepoSource? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  /// Structure is documented below.
  final FunctionBuildConfigSourceStorageSource? storageSource;

  /// Creates a new [FunctionBuildConfigSource].
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  FunctionBuildConfigSource({
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory FunctionBuildConfigSource.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfigSource(
      repoSource: map['repoSource'] == null
          ? null
          : FunctionBuildConfigSourceRepoSource.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null
          ? null
          : FunctionBuildConfigSourceStorageSource.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
