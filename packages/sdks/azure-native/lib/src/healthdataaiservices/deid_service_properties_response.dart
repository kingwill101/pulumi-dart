// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';

/// Details of the HealthDataAIServices DeidService.
class DeidServicePropertiesResponse {
  /// List of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets allow or disallow public network access to resource
  final pulumi.Input<String>? publicNetworkAccess;
  /// Deid service url.
  final pulumi.Input<String> serviceUrl;

  /// Creates a new [DeidServicePropertiesResponse].
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] The status of the last operation.
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to resource
  /// [serviceUrl] Deid service url.
  DeidServicePropertiesResponse({
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.serviceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serviceUrl': serviceUrl,
    };
  }

  factory DeidServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeidServicePropertiesResponse(
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      serviceUrl: (map['serviceUrl'] as String).input(),
    );
  }
}

