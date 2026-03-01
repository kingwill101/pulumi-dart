// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity.dart';

/// The properties related to a cosmos DB sql container endpoint.
class RoutingCosmosDBSqlApiProperties {
  /// Method used to authenticate against the cosmos DB sql container endpoint
  final String? authenticationType;
  /// The name of the cosmos DB sql container in the cosmos DB database.
  final String containerName;
  /// The name of the cosmos DB database in the cosmos DB account.
  final String databaseName;
  /// The url of the cosmos DB account. It must include the protocol https://
  final String endpointUri;
  /// Managed identity properties of routing cosmos DB container endpoint.
  final ManagedIdentity? identity;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  final String name;
  /// The name of the partition key associated with this cosmos DB sql container if one exists. This is an optional parameter.
  final String? partitionKeyName;
  /// The template for generating a synthetic partition key value for use with this cosmos DB sql container. The template must include at least one of the following placeholders: {iothub}, {deviceid}, {DD}, {MM}, and {YYYY}. Any one placeholder may be specified at most once, but order and non-placeholder components are arbitrary. This parameter is only required if PartitionKeyName is specified.
  final String? partitionKeyTemplate;
  /// The primary key of the cosmos DB account.
  final String? primaryKey;
  /// The name of the resource group of the cosmos DB account.
  final String? resourceGroup;
  /// The secondary key of the cosmos DB account.
  final String? secondaryKey;
  /// The subscription identifier of the cosmos DB account.
  final String? subscriptionId;

  /// Creates a new [RoutingCosmosDBSqlApiProperties].
  /// [authenticationType] Method used to authenticate against the cosmos DB sql container endpoint
  /// [containerName] The name of the cosmos DB sql container in the cosmos DB database.
  /// [databaseName] The name of the cosmos DB database in the cosmos DB account.
  /// [endpointUri] The url of the cosmos DB account. It must include the protocol https://
  /// [identity] Managed identity properties of routing cosmos DB container endpoint.
  /// [name] The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  /// [partitionKeyName] The name of the partition key associated with this cosmos DB sql container if one exists. This is an optional parameter.
  /// [partitionKeyTemplate] The template for generating a synthetic partition key value for use with this cosmos DB sql container. The template must include at least one of the following placeholders: {iothub}, {deviceid}, {DD}, {MM}, and {YYYY}. Any one placeholder may be specified at most once, but order and non-placeholder components are arbitrary. This parameter is only required if PartitionKeyName is specified.
  /// [primaryKey] The primary key of the cosmos DB account.
  /// [resourceGroup] The name of the resource group of the cosmos DB account.
  /// [secondaryKey] The secondary key of the cosmos DB account.
  /// [subscriptionId] The subscription identifier of the cosmos DB account.
  RoutingCosmosDBSqlApiProperties({
    this.authenticationType,
    required this.containerName,
    required this.databaseName,
    required this.endpointUri,
    this.identity,
    required this.name,
    this.partitionKeyName,
    this.partitionKeyTemplate,
    this.primaryKey,
    this.resourceGroup,
    this.secondaryKey,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'containerName': containerName,
      'databaseName': databaseName,
      'endpointUri': endpointUri,
      'identity': ?identity == null ? null : identity!.toMap(),
      'name': name,
      'partitionKeyName': ?partitionKeyName,
      'partitionKeyTemplate': ?partitionKeyTemplate,
      'primaryKey': ?primaryKey,
      'resourceGroup': ?resourceGroup,
      'secondaryKey': ?secondaryKey,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory RoutingCosmosDBSqlApiProperties.fromMap(Map<String, dynamic> map) {
    return RoutingCosmosDBSqlApiProperties(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      containerName: map['containerName'] as String,
      databaseName: map['databaseName'] as String,
      endpointUri: map['endpointUri'] as String,
      identity: map['identity'] == null ? null : ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      partitionKeyName: map['partitionKeyName'] == null ? null : map['partitionKeyName'] as String,
      partitionKeyTemplate: map['partitionKeyTemplate'] == null ? null : map['partitionKeyTemplate'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

