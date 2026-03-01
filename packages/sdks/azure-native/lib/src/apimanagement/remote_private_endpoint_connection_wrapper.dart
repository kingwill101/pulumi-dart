// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// Remote Private Endpoint Connection resource.
class RemotePrivateEndpointConnectionWrapper {
  /// Private Endpoint connection resource id
  final String? id;
  /// Private Endpoint Connection Name
  final String? name;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionState privateLinkServiceConnectionState;
  /// Private Endpoint Connection Resource Type
  final String? type;

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
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'type': ?type,
    };
  }

  factory RemotePrivateEndpointConnectionWrapper.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionWrapper(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

