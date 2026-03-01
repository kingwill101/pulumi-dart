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
  /// Value: The key property to map a field to, such as `title`, and
  /// `description`. Supported key properties:
  final Map<String, String>? keyPropertyMappings;

  /// The parameters for the entity to facilitate data ingestion.
  final String? params;

  /// Creates a new [DataConnectorEntity].
  /// [dataStore] (Output)
  /// [entityName] The name of the entity. Supported values by data source:
  /// [keyPropertyMappings] Attributes for indexing.
  /// [params] The parameters for the entity to facilitate data ingestion.
  DataConnectorEntity({
    this.dataStore,
    this.entityName,
    this.keyPropertyMappings,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': ?dataStore,
      'entityName': ?entityName,
      'keyPropertyMappings': ?keyPropertyMappings,
      'params': ?params,
    };
  }

  factory DataConnectorEntity.fromMap(Map<String, dynamic> map) {
    return DataConnectorEntity(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      entityName: map['entityName'] == null
          ? null
          : map['entityName'] as String,
      keyPropertyMappings: map['keyPropertyMappings'] == null
          ? null
          : (map['keyPropertyMappings'] as Map).cast<String, String>(),
      params: map['params'] == null ? null : map['params'] as String,
    );
  }
}
