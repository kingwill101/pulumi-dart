// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_response.dart';

/// The properties related to an event hub endpoint.
class RoutingEventHubPropertiesResponse {
  /// Method used to authenticate against the event hub endpoint
  final String? authenticationType;
  /// The connection string of the event hub endpoint.
  final String? connectionString;
  /// The url of the event hub endpoint. It must include the protocol sb://
  final String? endpointUri;
  /// Event hub name on the event hub namespace
  final String? entityPath;
  /// Id of the event hub endpoint
  final String? id;
  /// Managed identity properties of routing event hub endpoint.
  final ManagedIdentityResponse? identity;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  final String name;
  /// The name of the resource group of the event hub endpoint.
  final String? resourceGroup;
  /// The subscription identifier of the event hub endpoint.
  final String? subscriptionId;

  /// Creates a new [RoutingEventHubPropertiesResponse].
  /// [authenticationType] Method used to authenticate against the event hub endpoint
  /// [connectionString] The connection string of the event hub endpoint.
  /// [endpointUri] The url of the event hub endpoint. It must include the protocol sb://
  /// [entityPath] Event hub name on the event hub namespace
  /// [id] Id of the event hub endpoint
  /// [identity] Managed identity properties of routing event hub endpoint.
  /// [name] The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  /// [resourceGroup] The name of the resource group of the event hub endpoint.
  /// [subscriptionId] The subscription identifier of the event hub endpoint.
  RoutingEventHubPropertiesResponse({
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
      'identity': ?identity == null ? null : identity!.toMap(),
      'name': name,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory RoutingEventHubPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutingEventHubPropertiesResponse(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      entityPath: map['entityPath'] == null ? null : map['entityPath'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

