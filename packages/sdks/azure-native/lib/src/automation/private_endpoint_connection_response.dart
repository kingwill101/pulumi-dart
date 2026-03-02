// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// A private endpoint connection
class PrivateEndpointConnectionResponse {
  /// Gets the groupIds.
  final pulumi.Input<List<String>>? groupIds;
  /// Fully qualified resource Id for the resource
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointPropertyResponse>? privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<PrivateLinkServiceConnectionStatePropertyResponse>? privateLinkServiceConnectionState;
  /// The type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] Gets the groupIds.
  /// [id] Fully qualified resource Id for the resource
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [type] The type of the resource.
  PrivateEndpointConnectionResponse({
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointPropertyResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStatePropertyResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

