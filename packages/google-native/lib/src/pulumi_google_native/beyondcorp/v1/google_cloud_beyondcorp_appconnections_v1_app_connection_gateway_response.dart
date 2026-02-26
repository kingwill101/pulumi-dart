// ignore_for_file: unused_element, unnecessary_cast

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse {
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

  GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse({
    required this.appGateway,
    required this.ingressPort,
    required this.l7psc,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGateway'] = appGateway;
    map['ingressPort'] = ingressPort;
    map['l7psc'] = l7psc;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse(
      appGateway: map['appGateway'] as String,
      ingressPort: map['ingressPort'] as int,
      l7psc: map['l7psc'] as String,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
