// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
class PrivateEndpointConnectionResponse {
  /// Group ids
  final pulumi.Input<List<String>>? groupIds;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;

  /// The name of the resource
  final pulumi.Input<String> name;

  /// The resource of private end point.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  final pulumi.Input<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] Group ids
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateEndpointConnectionResponse({
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          pulumi.Input.mapInputValue<
            PrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: (() {
        final guardedValue = map['groupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(
        PrivateLinkServiceConnectionStateResponse.fromMap(
          (map['privateLinkServiceConnectionState']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
