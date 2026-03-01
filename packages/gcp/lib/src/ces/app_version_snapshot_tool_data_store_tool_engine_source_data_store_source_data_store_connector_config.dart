// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig {
  /// (Output)
  /// Resource name of the collection the data store belongs to.
  final String? collection;

  /// (Output)
  /// Display name of the collection the data store belongs to.
  final String? collectionDisplayName;

  /// (Output)
  /// The name of the data source.
  /// Example: `salesforce`, `jira`, `confluence`, `bigquery`.
  final String? dataSource;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig].
  /// [collection] (Output)
  /// [collectionDisplayName] (Output)
  /// [dataSource] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig({
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

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig(
      collection: map['collection'] == null
          ? null
          : map['collection'] as String,
      collectionDisplayName: map['collectionDisplayName'] == null
          ? null
          : map['collectionDisplayName'] as String,
      dataSource: map['dataSource'] == null
          ? null
          : map['dataSource'] as String,
    );
  }
}
