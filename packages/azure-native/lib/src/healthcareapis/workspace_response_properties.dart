// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';

/// Workspaces resource specific properties.
class WorkspaceResponseProperties {
  /// The list of private endpoint connections that are set up for this resource.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The provisioning state.
  final String provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final String publicNetworkAccess;

  /// Creates a new [WorkspaceResponseProperties].
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  WorkspaceResponseProperties({
    required this.privateEndpointConnections,
    required this.provisioningState,
    required this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': publicNetworkAccess,
    };
  }

  factory WorkspaceResponseProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceResponseProperties(
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
    );
  }
}

