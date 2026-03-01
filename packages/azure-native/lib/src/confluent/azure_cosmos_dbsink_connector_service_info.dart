// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when auth_type is AzureCosmosDBSinkConnector
class AzureCosmosDBSinkConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureCosmosDBSinkConnector'.
  final String connectorServiceType;
  /// Azure Cosmos Database Connection Endpoint
  final String? cosmosConnectionEndpoint;
  /// Azure Cosmos Database Containers Topic Mapping
  final String? cosmosContainersTopicMapping;
  /// Azure Cosmos Database Name
  final String? cosmosDatabaseName;
  /// Azure Cosmos Database Id Strategy
  final String? cosmosIdStrategy;
  /// Azure Cosmos Database Master Key
  final String? cosmosMasterKey;

  /// Creates a new [AzureCosmosDBSinkConnectorServiceInfo].
  /// [connectorServiceType] The connector service type.
  /// [cosmosConnectionEndpoint] Azure Cosmos Database Connection Endpoint
  /// [cosmosContainersTopicMapping] Azure Cosmos Database Containers Topic Mapping
  /// [cosmosDatabaseName] Azure Cosmos Database Name
  /// [cosmosIdStrategy] Azure Cosmos Database Id Strategy
  /// [cosmosMasterKey] Azure Cosmos Database Master Key
  AzureCosmosDBSinkConnectorServiceInfo({
    required this.connectorServiceType,
    this.cosmosConnectionEndpoint,
    this.cosmosContainersTopicMapping,
    this.cosmosDatabaseName,
    this.cosmosIdStrategy,
    this.cosmosMasterKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorServiceType': connectorServiceType,
      'cosmosConnectionEndpoint': ?cosmosConnectionEndpoint,
      'cosmosContainersTopicMapping': ?cosmosContainersTopicMapping,
      'cosmosDatabaseName': ?cosmosDatabaseName,
      'cosmosIdStrategy': ?cosmosIdStrategy,
      'cosmosMasterKey': ?cosmosMasterKey,
    };
  }

  factory AzureCosmosDBSinkConnectorServiceInfo.fromMap(Map<String, dynamic> map) {
    return AzureCosmosDBSinkConnectorServiceInfo(
      connectorServiceType: map['connectorServiceType'] as String,
      cosmosConnectionEndpoint: map['cosmosConnectionEndpoint'] == null ? null : map['cosmosConnectionEndpoint'] as String,
      cosmosContainersTopicMapping: map['cosmosContainersTopicMapping'] == null ? null : map['cosmosContainersTopicMapping'] as String,
      cosmosDatabaseName: map['cosmosDatabaseName'] == null ? null : map['cosmosDatabaseName'] as String,
      cosmosIdStrategy: map['cosmosIdStrategy'] == null ? null : map['cosmosIdStrategy'] as String,
      cosmosMasterKey: map['cosmosMasterKey'] == null ? null : map['cosmosMasterKey'] as String,
    );
  }
}

