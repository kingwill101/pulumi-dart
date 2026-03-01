// ignore_for_file: unused_element, unnecessary_cast

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayResponse {
  /// AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  final String appGateway;

  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final int ingressPort;

  /// L7 private service connection for this resource.
  final String l7psc;

  /// The type of hosting used by the gateway.
  final String type;

  /// Server-defined URI for this resource.
  final String uri;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayResponse].
  /// [appGateway] AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  /// [ingressPort] Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  /// [l7psc] L7 private service connection for this resource.
  /// [type] The type of hosting used by the gateway.
  /// [uri] Server-defined URI for this resource.
  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayResponse({
    required this.appGateway,
    required this.ingressPort,
    required this.l7psc,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'ingressPort': ingressPort,
      'l7psc': l7psc,
      'type': type,
      'uri': uri,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayResponse(
      appGateway: map['appGateway'] as String,
      ingressPort: map['ingressPort'] as int,
      l7psc: map['l7psc'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
