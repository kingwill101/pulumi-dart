// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_tool_data_store_tool_engine_source_data_store_source/app_version_snapshot_tool_data_store_tool_engine_source_data_store_source.dart';

class AppVersionSnapshotToolDataStoreToolEngineSource {
  /// (Output)
  /// Use to target specific DataStores within the Engine.
  /// If empty, the search applies to all DataStores associated with the
  /// Engine.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource>?
      dataStoreSources;

  /// (Output)
  /// Full resource name of the Engine.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  final String? engine;

  /// (Output)
  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final String? filter;

  AppVersionSnapshotToolDataStoreToolEngineSource({
    this.dataStoreSources,
    this.engine,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreSourcesValue = dataStoreSources;
    if (dataStoreSourcesValue != null) {
      map['dataStoreSources'] = Input.encodeList<
              AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource,
              Map<String, dynamic>>(
          dataStoreSourcesValue, (value) => value.toMap());
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSource.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSource(
      dataStoreSources: map['dataStoreSources'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource>(
              map['dataStoreSources'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource
                      .fromMap((value as Map).cast<String, dynamic>())),
      engine: map['engine'] == null ? null : map['engine'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}
