// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';

/// Properties that define a Azure Arc PrivateLinkScope resource.
class KubernetesConfigurationPrivateLinkScopePropertiesResponse {
  /// Managed Cluster ARM ID for the private link scope  (Required)
  final pulumi.Input<String> clusterResourceId;

  /// The collection of associated Private Endpoint Connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>
  privateEndpointConnections;

  /// The Guid id of the private link scope.
  final pulumi.Input<String> privateLinkScopeId;

  /// Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Provisioning ,Succeeded, Canceled and Failed.
  final pulumi.Input<String> provisioningState;

  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [KubernetesConfigurationPrivateLinkScopePropertiesResponse].
  /// [clusterResourceId] Managed Cluster ARM ID for the private link scope  (Required)
  /// [privateEndpointConnections] The collection of associated Private Endpoint Connections.
  /// [privateLinkScopeId] The Guid id of the private link scope.
  /// [provisioningState] Current state of this PrivateLinkScope: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Provisioning ,Succeeded, Canceled and Failed.
  /// [publicNetworkAccess] Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  KubernetesConfigurationPrivateLinkScopePropertiesResponse({
    required this.clusterResourceId,
    required this.privateEndpointConnections,
    required this.privateLinkScopeId,
    required this.provisioningState,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': clusterResourceId,
      'privateEndpointConnections':
          pulumi.Input.mapInputValue<
            List<PrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateLinkScopeId': privateLinkScopeId,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory KubernetesConfigurationPrivateLinkScopePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesConfigurationPrivateLinkScopePropertiesResponse(
      clusterResourceId: pulumi.Input.fromValue(
        map['clusterResourceId'] as String,
      ),
      privateEndpointConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
          map['privateEndpointConnections']!,
          (value) => PrivateEndpointConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      privateLinkScopeId: pulumi.Input.fromValue(
        map['privateLinkScopeId'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
