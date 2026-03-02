// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_response.dart';
import 'private_endpoint_response.dart';

class PrivateEndpointConnectionResponse {
  /// GroupIds from the private link service resource.
  final pulumi.Input<List<String>>? groupIds;
  /// Fully qualified identifier of the resource.
  final pulumi.Input<String> id;
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The Private Endpoint resource for this Connection.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;
  /// Details about the state of the connection.
  final pulumi.Input<ConnectionStateResponse>? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final pulumi.Input<String>? provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] GroupIds from the private link service resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [type] Type of the resource.
  PrivateEndpointConnectionResponse({
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

