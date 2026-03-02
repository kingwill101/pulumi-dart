// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when auth_type is AzureCosmosDBSourceConnector
class AzureCosmosDBSourceConnectorServiceInfo {
  /// The connector service type.
  /// Expected value is 'AzureCosmosDBSourceConnector'.
  final pulumi.Input<String> connectorServiceType;
  /// Azure Cosmos Database Connection Endpoint
  final pulumi.Input<String>? cosmosConnectionEndpoint;
  /// Azure Cosmos Database Containers Topic Mapping
  final pulumi.Input<String>? cosmosContainersTopicMapping;
  /// Azure Cosmos Database Name
  final pulumi.Input<String>? cosmosDatabaseName;
  /// Azure Cosmos Database Master Key
  final pulumi.Input<String>? cosmosMasterKey;
  /// Azure Cosmos Database Message Key Enabled
  final pulumi.Input<bool>? cosmosMessageKeyEnabled;
  /// Azure Cosmos Database Message Key Field
  final pulumi.Input<String>? cosmosMessageKeyField;

  /// Creates a new [AzureCosmosDBSourceConnectorServiceInfo].
  /// [connectorServiceType] The connector service type.
  /// [cosmosConnectionEndpoint] Azure Cosmos Database Connection Endpoint
  /// [cosmosContainersTopicMapping] Azure Cosmos Database Containers Topic Mapping
  /// [cosmosDatabaseName] Azure Cosmos Database Name
  /// [cosmosMasterKey] Azure Cosmos Database Master Key
  /// [cosmosMessageKeyEnabled] Azure Cosmos Database Message Key Enabled
  /// [cosmosMessageKeyField] Azure Cosmos Database Message Key Field
  AzureCosmosDBSourceConnectorServiceInfo({
    required this.connectorServiceType,
    this.cosmosConnectionEndpoint,
    this.cosmosContainersTopicMapping,
    this.cosmosDatabaseName,
    this.cosmosMasterKey,
    this.cosmosMessageKeyEnabled,
    this.cosmosMessageKeyField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorServiceType': connectorServiceType,
      'cosmosConnectionEndpoint': ?cosmosConnectionEndpoint,
      'cosmosContainersTopicMapping': ?cosmosContainersTopicMapping,
      'cosmosDatabaseName': ?cosmosDatabaseName,
      'cosmosMasterKey': ?cosmosMasterKey,
      'cosmosMessageKeyEnabled': ?cosmosMessageKeyEnabled,
      'cosmosMessageKeyField': ?cosmosMessageKeyField,
    };
  }

  factory AzureCosmosDBSourceConnectorServiceInfo.fromMap(Map<String, dynamic> map) {
    return AzureCosmosDBSourceConnectorServiceInfo(
      connectorServiceType: (map['connectorServiceType'] as String).input(),
      cosmosConnectionEndpoint: map['cosmosConnectionEndpoint'] == null ? null : (map['cosmosConnectionEndpoint']! as String).input(),
      cosmosContainersTopicMapping: map['cosmosContainersTopicMapping'] == null ? null : (map['cosmosContainersTopicMapping']! as String).input(),
      cosmosDatabaseName: map['cosmosDatabaseName'] == null ? null : (map['cosmosDatabaseName']! as String).input(),
      cosmosMasterKey: map['cosmosMasterKey'] == null ? null : (map['cosmosMasterKey']! as String).input(),
      cosmosMessageKeyEnabled: map['cosmosMessageKeyEnabled'] == null ? null : (map['cosmosMessageKeyEnabled']! as bool).input(),
      cosmosMessageKeyField: map['cosmosMessageKeyField'] == null ? null : (map['cosmosMessageKeyField']! as String).input(),
    );
  }
}

