// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_function_build_config_source_repo_source/get_function_build_config_source_repo_source.dart';
import '../get_function_build_config_source_storage_source/get_function_build_config_source_storage_source.dart';

class GetFunctionBuildConfigSource {
  /// If provided, get the source from this location in a Cloud Source Repository.
  final List<GetFunctionBuildConfigSourceRepoSource> repoSources;

  /// If provided, get the source from this location in Google Cloud Storage.
  final List<GetFunctionBuildConfigSourceStorageSource> storageSources;

  GetFunctionBuildConfigSource({
    required this.repoSources,
    required this.storageSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repoSources'] = Input.encodeList<
        GetFunctionBuildConfigSourceRepoSource,
        Map<String, dynamic>>(repoSources, (value) => value.toMap());
    map['storageSources'] = Input.encodeList<
        GetFunctionBuildConfigSourceStorageSource,
        Map<String, dynamic>>(storageSources, (value) => value.toMap());
    return map;
  }

  factory GetFunctionBuildConfigSource.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfigSource(
      repoSources: Input.decodeList<GetFunctionBuildConfigSourceRepoSource>(
          map['repoSources'],
          (value) => GetFunctionBuildConfigSourceRepoSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      storageSources:
          Input.decodeList<GetFunctionBuildConfigSourceStorageSource>(
              map['storageSources'],
              (value) => GetFunctionBuildConfigSourceStorageSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
