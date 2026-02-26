// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_data_store_connection_data_store_type.dart';

/// A data store connection. It represents a data store in Discovery Engine and the type of the contents it contains.
class GoogleCloudDialogflowCxV3DataStoreConnection {
  /// The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  final String? dataStore;

  /// The type of the connected data store.
  final GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType?
      dataStoreType;

  GoogleCloudDialogflowCxV3DataStoreConnection({
    this.dataStore,
    this.dataStoreType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreValue = dataStore;
    if (dataStoreValue != null) {
      map['dataStore'] = dataStoreValue;
    }
    final dataStoreTypeValue = dataStoreType;
    if (dataStoreTypeValue != null) {
      map['dataStoreType'] = dataStoreTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3DataStoreConnection.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3DataStoreConnection(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      dataStoreType: map['dataStoreType'] == null
          ? null
          : GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType.fromValue(
              map['dataStoreType'] as String),
    );
  }
}
