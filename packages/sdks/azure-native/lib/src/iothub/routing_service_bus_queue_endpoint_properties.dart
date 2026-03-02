// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity.dart';

/// The properties related to service bus queue endpoint types.
class RoutingServiceBusQueueEndpointProperties {
  /// Method used to authenticate against the service bus queue endpoint
  final pulumi.Input<String>? authenticationType;
  /// The connection string of the service bus queue endpoint.
  final pulumi.Input<String>? connectionString;
  /// The url of the service bus queue endpoint. It must include the protocol sb://
  final pulumi.Input<String>? endpointUri;
  /// Queue name on the service bus namespace
  final pulumi.Input<String>? entityPath;
  /// Id of the service bus queue endpoint
  final pulumi.Input<String>? id;
  /// Managed identity properties of routing service bus queue endpoint.
  final pulumi.Input<ManagedIdentity>? identity;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types. The name need not be the same as the actual queue name.
  final pulumi.Input<String> name;
  /// The name of the resource group of the service bus queue endpoint.
  final pulumi.Input<String>? resourceGroup;
  /// The subscription identifier of the service bus queue endpoint.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [RoutingServiceBusQueueEndpointProperties].
  /// [authenticationType] Method used to authenticate against the service bus queue endpoint
  /// [connectionString] The connection string of the service bus queue endpoint.
  /// [endpointUri] The url of the service bus queue endpoint. It must include the protocol sb://
  /// [entityPath] Queue name on the service bus namespace
  /// [id] Id of the service bus queue endpoint
  /// [identity] Managed identity properties of routing service bus queue endpoint.
  /// [name] The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types. The name need not be the same as the actual queue name.
  /// [resourceGroup] The name of the resource group of the service bus queue endpoint.
  /// [subscriptionId] The subscription identifier of the service bus queue endpoint.
  RoutingServiceBusQueueEndpointProperties({
    this.authenticationType,
    this.connectionString,
    this.endpointUri,
    this.entityPath,
    this.id,
    this.identity,
    required this.name,
    this.resourceGroup,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionString': ?connectionString,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory RoutingServiceBusQueueEndpointProperties.fromMap(Map<String, dynamic> map) {
    return RoutingServiceBusQueueEndpointProperties(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      entityPath: map['entityPath'] == null ? null : (map['entityPath']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

