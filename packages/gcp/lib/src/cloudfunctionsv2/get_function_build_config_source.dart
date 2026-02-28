// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config_source_repo_source.dart';
import 'get_function_build_config_source_storage_source.dart';

class GetFunctionBuildConfigSource {
  /// If provided, get the source from this location in a Cloud Source Repository.
  final List<GetFunctionBuildConfigSourceRepoSource> repoSources;

  /// If provided, get the source from this location in Google Cloud Storage.
  final List<GetFunctionBuildConfigSourceStorageSource> storageSources;

  /// Creates a new [GetFunctionBuildConfigSource].
  /// [repoSources] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSources] If provided, get the source from this location in Google Cloud Storage.
  GetFunctionBuildConfigSource({
    required this.repoSources,
    required this.storageSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repoSources'] = pulumi.Input.encodeList<
        GetFunctionBuildConfigSourceRepoSource,
        Map<String, dynamic>>(repoSources, (value) => value.toMap());
    map['storageSources'] = pulumi.Input.encodeList<
        GetFunctionBuildConfigSourceStorageSource,
        Map<String, dynamic>>(storageSources, (value) => value.toMap());
    return map;
  }

  factory GetFunctionBuildConfigSource.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfigSource(
      repoSources:
          pulumi.Input.decodeList<GetFunctionBuildConfigSourceRepoSource>(
              map['repoSources'],
              (value) => GetFunctionBuildConfigSourceRepoSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      storageSources:
          pulumi.Input.decodeList<GetFunctionBuildConfigSourceStorageSource>(
              map['storageSources'],
              (value) => GetFunctionBuildConfigSourceStorageSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
