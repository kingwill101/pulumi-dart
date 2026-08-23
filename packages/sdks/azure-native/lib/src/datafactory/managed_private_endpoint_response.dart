// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_properties_response.dart';

/// Properties of a managed private endpoint
class ManagedPrivateEndpointResponse {
  /// The managed private endpoint connection state
  final pulumi.Input<ConnectionStatePropertiesResponse>? connectionState;
  /// Fully qualified domain names
  final pulumi.Input<List<String>>? fqdns;
  /// The groupId to which the managed private endpoint is created
  final pulumi.Input<String>? groupId;
  /// Denotes whether the managed private endpoint is reserved
  final pulumi.Input<bool> isReserved;
  /// The ARM resource ID of the resource to which the managed private endpoint is created
  final pulumi.Input<String>? privateLinkResourceId;
  /// The managed private endpoint provisioning state
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ManagedPrivateEndpointResponse].
  /// [connectionState] The managed private endpoint connection state
  /// [fqdns] Fully qualified domain names
  /// [groupId] The groupId to which the managed private endpoint is created
  /// [isReserved] Denotes whether the managed private endpoint is reserved
  /// [privateLinkResourceId] The ARM resource ID of the resource to which the managed private endpoint is created
  /// [provisioningState] The managed private endpoint provisioning state
  const ManagedPrivateEndpointResponse({
    this.connectionState,
    this.fqdns,
    this.groupId,
    required this.isReserved,
    this.privateLinkResourceId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionStatePropertiesResponse, Map<String, dynamic>>(connectionState, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'groupId': ?groupId,
      'isReserved': isReserved,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': provisioningState,
    };
  }

  factory ManagedPrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointResponse(
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionStatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isReserved: pulumi.Input.fromValue(map['isReserved'] as bool),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
