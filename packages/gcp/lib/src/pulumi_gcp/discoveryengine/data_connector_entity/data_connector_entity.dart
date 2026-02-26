// ignore_for_file: unused_element, unnecessary_cast

class DataConnectorEntity {
  /// (Output)
  /// The full resource name of the associated data store for the source
  /// entity.
  /// Format: `projects/*/locations/*/collections/*/dataStores/*`.
  /// When the connector is initialized by the DataConnectorService.SetUpDataConnector
  /// method, a DataStore is automatically created for each source entity.
  final String? dataStore;

  /// The name of the entity. Supported values by data source:
  /// * Salesforce: `Lead`, `Opportunity`, `Contact`, `Account`, `Case`, `Contract`, `Campaign`
  /// * Jira: project, issue, attachment, comment, worklog
  /// * Confluence: `Content`, `Space`
  final String? entityName;

  /// Attributes for indexing.
  /// Key: Field name.
  /// Value: The key property to map a field to, such as <span pulumi-lang-nodejs="`title`" pulumi-lang-dotnet="`Title`" pulumi-lang-go="`title`" pulumi-lang-python="`title`" pulumi-lang-yaml="`title`" pulumi-lang-java="`title`">`title`</span>, and
  /// <span pulumi-lang-nodejs="`description`" pulumi-lang-dotnet="`Description`" pulumi-lang-go="`description`" pulumi-lang-python="`description`" pulumi-lang-yaml="`description`" pulumi-lang-java="`description`">`description`</span>. Supported key properties:
  final Map<String, String>? keyPropertyMappings;

  /// The parameters for the entity to facilitate data ingestion.
  final String? params;

  DataConnectorEntity({
    this.dataStore,
    this.entityName,
    this.keyPropertyMappings,
    this.params,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreValue = dataStore;
    if (dataStoreValue != null) {
      map['dataStore'] = dataStoreValue;
    }
    final entityNameValue = entityName;
    if (entityNameValue != null) {
      map['entityName'] = entityNameValue;
    }
    final keyPropertyMappingsValue = keyPropertyMappings;
    if (keyPropertyMappingsValue != null) {
      map['keyPropertyMappings'] = keyPropertyMappingsValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = paramsValue;
    }
    return map;
  }

  factory DataConnectorEntity.fromMap(Map<String, dynamic> map) {
    return DataConnectorEntity(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      entityName:
          map['entityName'] == null ? null : map['entityName'] as String,
      keyPropertyMappings: map['keyPropertyMappings'] == null
          ? null
          : (map['keyPropertyMappings'] as Map).cast<String, String>(),
      params: map['params'] == null ? null : map['params'] as String,
    );
  }
}
