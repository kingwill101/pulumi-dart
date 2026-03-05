// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_id_wrapper_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Remote Private Endpoint Connection resource.
class RemotePrivateEndpointConnectionWrapperResponse {
  /// All the Group ids.
  final pulumi.Input<List<String>> groupIds;
  /// Private Endpoint connection resource id
  final pulumi.Input<String>? id;
  /// Private Endpoint Connection Name
  final pulumi.Input<String>? name;
  /// The resource of private end point.
  final pulumi.Input<ArmIdWrapperResponse>? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final pulumi.Input<String> provisioningState;
  /// Private Endpoint Connection Resource Type
  final pulumi.Input<String>? type;

  /// Creates a new [RemotePrivateEndpointConnectionWrapperResponse].
  /// [groupIds] All the Group ids.
  /// [id] Private Endpoint connection resource id
  /// [name] Private Endpoint Connection Name
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [type] Private Endpoint Connection Resource Type
  RemotePrivateEndpointConnectionWrapperResponse({
    required this.groupIds,
    this.id,
    this.name,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': groupIds,
      'id': ?id,
      'name': ?name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<ArmIdWrapperResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': ?type,
    };
  }

  factory RemotePrivateEndpointConnectionWrapperResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionWrapperResponse(
      groupIds: pulumi.Input.fromValue((map['groupIds'] as List).cast<String>()),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmIdWrapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

