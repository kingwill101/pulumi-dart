// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection for a project.
class PrivateEndpointConnectionResponse {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// The group ids for the private endpoint resource.
  final pulumi.Input<List<String>>? groupIds;
  /// Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  final pulumi.Input<String> id;
  /// Name of the private endpoint endpoint connection.
  final pulumi.Input<String> name;
  /// The private endpoint resource.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// Properties of the private endpoint endpoint connection.
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse> properties;
  /// The provisioning state of the private endpoint connection resource.
  final pulumi.Input<String>? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse>? systemData;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [eTag] For optimistic concurrency control.
  /// [groupIds] The group ids for the private endpoint resource.
  /// [id] Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  /// [name] Name of the private endpoint endpoint connection.
  /// [privateEndpoint] The private endpoint resource.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [properties] Properties of the private endpoint endpoint connection.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  PrivateEndpointConnectionResponse({
    this.eTag,
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.properties,
    this.provisioningState,
    this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'systemData': ?pulumi.Input.mapOptionalInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      groupIds: map['groupIds'] == null ? null : ((map['groupIds']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      properties: (PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      systemData: map['systemData'] == null ? null : (SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

