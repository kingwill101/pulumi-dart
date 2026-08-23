// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_response.dart';

/// The properties related to service bus queue endpoint types.
class RoutingServiceBusQueueEndpointPropertiesResponse {
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
  final pulumi.Input<ManagedIdentityResponse>? identity;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types. The name need not be the same as the actual queue name.
  final pulumi.Input<String> name;
  /// The name of the resource group of the service bus queue endpoint.
  final pulumi.Input<String>? resourceGroup;
  /// The subscription identifier of the service bus queue endpoint.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [RoutingServiceBusQueueEndpointPropertiesResponse].
  /// [authenticationType] Method used to authenticate against the service bus queue endpoint
  /// [connectionString] The connection string of the service bus queue endpoint.
  /// [endpointUri] The url of the service bus queue endpoint. It must include the protocol sb://
  /// [entityPath] Queue name on the service bus namespace
  /// [id] Id of the service bus queue endpoint
  /// [identity] Managed identity properties of routing service bus queue endpoint.
  /// [name] The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types. The name need not be the same as the actual queue name.
  /// [resourceGroup] The name of the resource group of the service bus queue endpoint.
  /// [subscriptionId] The subscription identifier of the service bus queue endpoint.
  const RoutingServiceBusQueueEndpointPropertiesResponse({
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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory RoutingServiceBusQueueEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutingServiceBusQueueEndpointPropertiesResponse(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityPath: (() { final guardedValue = map['entityPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
