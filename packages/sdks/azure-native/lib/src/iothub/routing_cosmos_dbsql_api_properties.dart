// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity.dart';

/// The properties related to a cosmos DB sql container endpoint.
class RoutingCosmosDBSqlApiProperties {
  /// Method used to authenticate against the cosmos DB sql container endpoint
  final pulumi.Input<String>? authenticationType;
  /// The name of the cosmos DB sql container in the cosmos DB database.
  final pulumi.Input<String> containerName;
  /// The name of the cosmos DB database in the cosmos DB account.
  final pulumi.Input<String> databaseName;
  /// The url of the cosmos DB account. It must include the protocol https://
  final pulumi.Input<String> endpointUri;
  /// Managed identity properties of routing cosmos DB container endpoint.
  final pulumi.Input<ManagedIdentity>? identity;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  final pulumi.Input<String> name;
  /// The name of the partition key associated with this cosmos DB sql container if one exists. This is an optional parameter.
  final pulumi.Input<String>? partitionKeyName;
  /// The template for generating a synthetic partition key value for use with this cosmos DB sql container. The template must include at least one of the following placeholders: {iothub}, {deviceid}, {DD}, {MM}, and {YYYY}. Any one placeholder may be specified at most once, but order and non-placeholder components are arbitrary. This parameter is only required if PartitionKeyName is specified.
  final pulumi.Input<String>? partitionKeyTemplate;
  /// The primary key of the cosmos DB account.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group of the cosmos DB account.
  final pulumi.Input<String>? resourceGroup;
  /// The secondary key of the cosmos DB account.
  final pulumi.Input<String>? secondaryKey;
  /// The subscription identifier of the cosmos DB account.
  final pulumi.Input<String>? subscriptionId;

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
  const RoutingCosmosDBSqlApiProperties({
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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
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
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      partitionKeyName: (() { final guardedValue = map['partitionKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyTemplate: (() { final guardedValue = map['partitionKeyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

