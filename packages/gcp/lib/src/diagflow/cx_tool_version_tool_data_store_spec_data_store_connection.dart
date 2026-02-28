// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolDataStoreSpecDataStoreConnection {
  /// The full name of the referenced data store. Formats: projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore} projects/{project}/locations/{location}/dataStores/{dataStore}
  final String? dataStore;

  /// The type of the connected data store.
  /// See [DataStoreType](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#datastoretype) for valid values.
  final String? dataStoreType;

  /// The document processing mode for the data store connection. Should only be set for PUBLIC_WEB and UNSTRUCTURED data stores. If not set it is considered as DOCUMENTS, as this is the legacy mode.
  /// See [DocumentProcessingMode](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#documentprocessingmode) for valid values.
  final String? documentProcessingMode;

  /// Creates a new [CxToolVersionToolDataStoreSpecDataStoreConnection].
  /// [dataStore] The full name of the referenced data store. Formats: projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore} projects/{project}/locations/{location}/dataStores/{dataStore}
  /// [dataStoreType] The type of the connected data store.
  /// [documentProcessingMode] The document processing mode for the data store connection. Should only be set for PUBLIC_WEB and UNSTRUCTURED data stores. If not set it is considered as DOCUMENTS, as this is the legacy mode.
  CxToolVersionToolDataStoreSpecDataStoreConnection({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreValue = dataStore;
    if (dataStoreValue != null) {
      map['dataStore'] = dataStoreValue;
    }
    final dataStoreTypeValue = dataStoreType;
    if (dataStoreTypeValue != null) {
      map['dataStoreType'] = dataStoreTypeValue;
    }
    final documentProcessingModeValue = documentProcessingMode;
    if (documentProcessingModeValue != null) {
      map['documentProcessingMode'] = documentProcessingModeValue;
    }
    return map;
  }

  factory CxToolVersionToolDataStoreSpecDataStoreConnection.fromMap(
      Map<String, dynamic> map) {
    return CxToolVersionToolDataStoreSpecDataStoreConnection(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      dataStoreType:
          map['dataStoreType'] == null ? null : map['dataStoreType'] as String,
      documentProcessingMode: map['documentProcessingMode'] == null
          ? null
          : map['documentProcessingMode'] as String,
    );
  }
}
