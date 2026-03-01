// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_data_model_response.dart';

/// Properties that define a Azure Arc PrivateLinkScope resource.
class HybridComputePrivateLinkScopePropertiesResponse {
  /// The collection of associated Private Endpoint Connections.
  final List<PrivateEndpointConnectionDataModelResponse> privateEndpointConnections;
  /// The Guid id of the private link scope.
  final String privateLinkScopeId;
  /// Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Provisioning ,Succeeded, Canceled and Failed.
  final String provisioningState;
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final String? publicNetworkAccess;

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
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionDataModelResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkScopeId': privateLinkScopeId,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory HybridComputePrivateLinkScopePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HybridComputePrivateLinkScopePropertiesResponse(
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionDataModelResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionDataModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkScopeId: map['privateLinkScopeId'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

