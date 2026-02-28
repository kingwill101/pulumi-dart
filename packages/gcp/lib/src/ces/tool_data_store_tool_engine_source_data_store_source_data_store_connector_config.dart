// ignore_for_file: unused_element, unnecessary_cast


class ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig {
  /// Resource name of the collection the data store belongs to.
  final String? collection;
  /// Display name of the collection the data store belongs to.
  final String? collectionDisplayName;
  /// The name of the data source.
  /// Example: 'salesforce', 'jira', 'confluence', 'bigquery'.
  final String? dataSource;

  /// Creates a new [ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig].
  /// [collection] Resource name of the collection the data store belongs to.
  /// [collectionDisplayName] Display name of the collection the data store belongs to.
  /// [dataSource] The name of the data source.
  ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig({
    this.collection,
    this.collectionDisplayName,
    this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'collectionDisplayName': ?collectionDisplayName,
      'dataSource': ?dataSource,
    };
  }

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig(
      collection: map['collection'] == null ? null : map['collection'] as String,
      collectionDisplayName: map['collectionDisplayName'] == null ? null : map['collectionDisplayName'] as String,
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
    );
  }
}

