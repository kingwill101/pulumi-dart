// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// Remote Private Endpoint Connection resource.
class RemotePrivateEndpointConnectionWrapper {
  /// Private Endpoint connection resource id
  final pulumi.Input<String>? id;
  /// Private Endpoint Connection Name
  final pulumi.Input<String>? name;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// Private Endpoint Connection Resource Type
  final pulumi.Input<String>? type;

  /// Creates a new [RemotePrivateEndpointConnectionWrapper].
  /// [id] Private Endpoint connection resource id
  /// [name] Private Endpoint Connection Name
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [type] Private Endpoint Connection Resource Type
  RemotePrivateEndpointConnectionWrapper({
    this.id,
    this.name,
    required this.privateLinkServiceConnectionState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RemotePrivateEndpointConnectionWrapper.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionWrapper(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

