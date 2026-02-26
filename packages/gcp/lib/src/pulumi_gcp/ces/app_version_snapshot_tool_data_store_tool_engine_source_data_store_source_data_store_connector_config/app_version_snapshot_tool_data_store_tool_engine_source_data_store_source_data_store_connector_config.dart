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
  /// Example: <span pulumi-lang-nodejs="`salesforce`" pulumi-lang-dotnet="`Salesforce`" pulumi-lang-go="`salesforce`" pulumi-lang-python="`salesforce`" pulumi-lang-yaml="`salesforce`" pulumi-lang-java="`salesforce`">`salesforce`</span>, <span pulumi-lang-nodejs="`jira`" pulumi-lang-dotnet="`Jira`" pulumi-lang-go="`jira`" pulumi-lang-python="`jira`" pulumi-lang-yaml="`jira`" pulumi-lang-java="`jira`">`jira`</span>, <span pulumi-lang-nodejs="`confluence`" pulumi-lang-dotnet="`Confluence`" pulumi-lang-go="`confluence`" pulumi-lang-python="`confluence`" pulumi-lang-yaml="`confluence`" pulumi-lang-java="`confluence`">`confluence`</span>, <span pulumi-lang-nodejs="`bigquery`" pulumi-lang-dotnet="`Bigquery`" pulumi-lang-go="`bigquery`" pulumi-lang-python="`bigquery`" pulumi-lang-yaml="`bigquery`" pulumi-lang-java="`bigquery`">`bigquery`</span>.
  final String? dataSource;

  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig({
    this.collection,
    this.collectionDisplayName,
    this.dataSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue;
    }
    final collectionDisplayNameValue = collectionDisplayName;
    if (collectionDisplayNameValue != null) {
      map['collectionDisplayName'] = collectionDisplayNameValue;
    }
    final dataSourceValue = dataSource;
    if (dataSourceValue != null) {
      map['dataSource'] = dataSourceValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig(
      collection:
          map['collection'] == null ? null : map['collection'] as String,
      collectionDisplayName: map['collectionDisplayName'] == null
          ? null
          : map['collectionDisplayName'] as String,
      dataSource:
          map['dataSource'] == null ? null : map['dataSource'] as String,
    );
  }
}
