// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_build_source_repo_source.dart';
import 'trigger_build_source_storage_source.dart';

class TriggerBuildSource {
  /// Location of the source in a Google Cloud Source Repository.
  /// Structure is documented below.
  final TriggerBuildSourceRepoSource? repoSource;

  /// Location of the source in an archive file in Google Cloud Storage.
  /// Structure is documented below.
  final TriggerBuildSourceStorageSource? storageSource;

  /// Creates a new [TriggerBuildSource].
  /// [repoSource] Location of the source in a Google Cloud Source Repository.
  /// [storageSource] Location of the source in an archive file in Google Cloud Storage.
  TriggerBuildSource({this.repoSource, this.storageSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repoSource': ?repoSource == null ? null : repoSource!.toMap(),
      'storageSource': ?storageSource == null ? null : storageSource!.toMap(),
    };
  }

  factory TriggerBuildSource.fromMap(Map<String, dynamic> map) {
    return TriggerBuildSource(
      repoSource: map['repoSource'] == null
          ? null
          : TriggerBuildSourceRepoSource.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>(),
            ),
      storageSource: map['storageSource'] == null
          ? null
          : TriggerBuildSourceStorageSource.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
