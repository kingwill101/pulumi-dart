// ignore_for_file: unused_element, unnecessary_cast

/// A data store connection. It represents a data store in Discovery Engine and the type of the contents it contains.
class GoogleCloudDialogflowCxV3DataStoreConnectionResponse {
  /// The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  final String dataStore;

  /// The type of the connected data store.
  final String dataStoreType;

  /// Creates a new [GoogleCloudDialogflowCxV3DataStoreConnectionResponse].
  /// [dataStore] The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  /// [dataStoreType] The type of the connected data store.
  GoogleCloudDialogflowCxV3DataStoreConnectionResponse({
    required this.dataStore,
    required this.dataStoreType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStore'] = dataStore;
    map['dataStoreType'] = dataStoreType;
    return map;
  }

  factory GoogleCloudDialogflowCxV3DataStoreConnectionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3DataStoreConnectionResponse(
      dataStore: map['dataStore'] as String,
      dataStoreType: map['dataStoreType'] as String,
    );
  }
}
