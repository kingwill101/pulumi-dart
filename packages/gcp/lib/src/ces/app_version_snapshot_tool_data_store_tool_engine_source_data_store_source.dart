// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_engine_source_data_store_source_data_store.dart';

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource {
  /// (Output)
  /// A DataStore resource in Vertex AI Search.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore>?
      dataStores;

  /// (Output)
  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final String? filter;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource].
  /// [dataStores] (Output)
  /// [filter] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource({
    this.dataStores,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoresValue = dataStores;
    if (dataStoresValue != null) {
      map['dataStores'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore,
          Map<String, dynamic>>(dataStoresValue, (value) => value.toMap());
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSource(
      dataStores: map['dataStores'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore>(
              map['dataStores'],
              (value) =>
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore
                      .fromMap((value as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}
