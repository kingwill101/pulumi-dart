// ignore_for_file: unused_element, unnecessary_cast

class CxFlowKnowledgeConnectorSettingsDataStoreConnection {
  /// The full name of the referenced data store. Formats: projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore} projects/{project}/locations/{location}/dataStores/{dataStore}
  final String? dataStore;

  /// The type of the connected data store.
  /// * PUBLIC_WEB: A data store that contains public web content.
  /// * UNSTRUCTURED: A data store that contains unstructured private data.
  /// * STRUCTURED: A data store that contains structured data (for example FAQ).
  /// Possible values are: `PUBLIC_WEB`, `UNSTRUCTURED`, `STRUCTURED`.
  final String? dataStoreType;

  /// The document processing mode for the data store connection. Should only be set for PUBLIC_WEB and UNSTRUCTURED data stores. If not set it is considered as DOCUMENTS, as this is the legacy mode.
  /// * DOCUMENTS: Documents are processed as documents.
  /// * CHUNKS: Documents are converted to chunks.
  /// Possible values are: `DOCUMENTS`, `CHUNKS`.
  final String? documentProcessingMode;

  CxFlowKnowledgeConnectorSettingsDataStoreConnection({
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

  factory CxFlowKnowledgeConnectorSettingsDataStoreConnection.fromMap(
      Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsDataStoreConnection(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      dataStoreType:
          map['dataStoreType'] == null ? null : map['dataStoreType'] as String,
      documentProcessingMode: map['documentProcessingMode'] == null
          ? null
          : map['documentProcessingMode'] as String,
    );
  }
}
