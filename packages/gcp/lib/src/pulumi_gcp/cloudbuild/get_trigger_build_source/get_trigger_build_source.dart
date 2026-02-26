// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_trigger_build_source_repo_source/get_trigger_build_source_repo_source.dart';
import '../get_trigger_build_source_storage_source/get_trigger_build_source_storage_source.dart';

class GetTriggerBuildSource {
  /// Location of the source in a Google Cloud Source Repository.
  final List<GetTriggerBuildSourceRepoSource> repoSources;

  /// Location of the source in an archive file in Google Cloud Storage.
  final List<GetTriggerBuildSourceStorageSource> storageSources;

  GetTriggerBuildSource({
    required this.repoSources,
    required this.storageSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repoSources'] =
        Input.encodeList<GetTriggerBuildSourceRepoSource, Map<String, dynamic>>(
            repoSources, (value) => value.toMap());
    map['storageSources'] = Input.encodeList<GetTriggerBuildSourceStorageSource,
        Map<String, dynamic>>(storageSources, (value) => value.toMap());
    return map;
  }

  factory GetTriggerBuildSource.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSource(
      repoSources: Input.decodeList<GetTriggerBuildSourceRepoSource>(
          map['repoSources'],
          (value) => GetTriggerBuildSourceRepoSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      storageSources: Input.decodeList<GetTriggerBuildSourceStorageSource>(
          map['storageSources'],
          (value) => GetTriggerBuildSourceStorageSource.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
