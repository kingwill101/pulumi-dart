// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_data_model_response.dart';

/// Properties that define a Azure Arc PrivateLinkScope resource.
class HybridComputePrivateLinkScopePropertiesResponse {
  /// The collection of associated Private Endpoint Connections.
  final pulumi.Input<List<PrivateEndpointConnectionDataModelResponse>> privateEndpointConnections;
  /// The Guid id of the private link scope.
  final pulumi.Input<String> privateLinkScopeId;
  /// Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Provisioning ,Succeeded, Canceled and Failed.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [HybridComputePrivateLinkScopePropertiesResponse].
  /// [privateEndpointConnections] The collection of associated Private Endpoint Connections.
  /// [privateLinkScopeId] The Guid id of the private link scope.
  /// [provisioningState] Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Provisioning ,Succeeded, Canceled and Failed.
  /// [publicNetworkAccess] Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  HybridComputePrivateLinkScopePropertiesResponse({
    required this.privateEndpointConnections,
    required this.privateLinkScopeId,
    required this.provisioningState,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionDataModelResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionDataModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkScopeId': privateLinkScopeId,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory HybridComputePrivateLinkScopePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HybridComputePrivateLinkScopePropertiesResponse(
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionDataModelResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionDataModelResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateLinkScopeId: pulumi.Input.fromValue(map['privateLinkScopeId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

