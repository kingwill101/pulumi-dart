// ignore_for_file: unused_element, unnecessary_cast

import 'tool_data_store_tool_engine_source_data_store_source_data_store.dart';

class ToolDataStoreToolEngineSourceDataStoreSource {
  /// A DataStore resource in Vertex AI Search.
  /// Structure is documented below.
  final ToolDataStoreToolEngineSourceDataStoreSourceDataStore? dataStore;

  /// Filter specification for the DataStore.
  /// See:
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata
  final String? filter;

  /// Creates a new [ToolDataStoreToolEngineSourceDataStoreSource].
  /// [dataStore] A DataStore resource in Vertex AI Search.
  /// [filter] Filter specification for the DataStore.
  ToolDataStoreToolEngineSourceDataStoreSource({
    this.dataStore,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreValue = dataStore;
    if (dataStoreValue != null) {
      map['dataStore'] = dataStoreValue.toMap();
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory ToolDataStoreToolEngineSourceDataStoreSource.fromMap(
      Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSource(
      dataStore: map['dataStore'] == null
          ? null
          : ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(
              (map['dataStore'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}
