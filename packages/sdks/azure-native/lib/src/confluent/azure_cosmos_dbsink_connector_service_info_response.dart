// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when auth_type is AzureCosmosDBSinkConnector
class AzureCosmosDBSinkConnectorServiceInfoResponse {
  /// The connector service type.
  /// Expected value is 'AzureCosmosDBSinkConnector'.
  final pulumi.Input<String> connectorServiceType;
  /// Azure Cosmos Database Connection Endpoint
  final pulumi.Input<String?>? cosmosConnectionEndpoint;
  /// Azure Cosmos Database Containers Topic Mapping
  final pulumi.Input<String?>? cosmosContainersTopicMapping;
  /// Azure Cosmos Database Name
  final pulumi.Input<String?>? cosmosDatabaseName;
  /// Azure Cosmos Database Id Strategy
  final pulumi.Input<String?>? cosmosIdStrategy;
  /// Azure Cosmos Database Master Key
  final pulumi.Input<String?>? cosmosMasterKey;

  /// Creates a new [AzureCosmosDBSinkConnectorServiceInfoResponse].
  /// [connectorServiceType] The connector service type.
  /// [cosmosConnectionEndpoint] Azure Cosmos Database Connection Endpoint
  /// [cosmosContainersTopicMapping] Azure Cosmos Database Containers Topic Mapping
  /// [cosmosDatabaseName] Azure Cosmos Database Name
  /// [cosmosIdStrategy] Azure Cosmos Database Id Strategy
  /// [cosmosMasterKey] Azure Cosmos Database Master Key
  const AzureCosmosDBSinkConnectorServiceInfoResponse({
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

  factory AzureCosmosDBSinkConnectorServiceInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureCosmosDBSinkConnectorServiceInfoResponse(
      connectorServiceType: pulumi.Input.fromValue(map['connectorServiceType'] as String),
      cosmosConnectionEndpoint: (() { final guardedValue = map['cosmosConnectionEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosContainersTopicMapping: (() { final guardedValue = map['cosmosContainersTopicMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosDatabaseName: (() { final guardedValue = map['cosmosDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosIdStrategy: (() { final guardedValue = map['cosmosIdStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosMasterKey: (() { final guardedValue = map['cosmosMasterKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
