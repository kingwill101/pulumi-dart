// ignore_for_file: unused_element, unnecessary_cast

class GetAppConnectionGateway {
  /// AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  final String appGateway;

  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final int ingressPort;

  /// The type of hosting used by the gateway. Refer to
  /// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
  /// for a list of possible values.
  final String type;

  /// Server-defined URI for this resource.
  final String uri;

  /// Creates a new [GetAppConnectionGateway].
  /// [appGateway] AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  /// [ingressPort] Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  /// [type] The type of hosting used by the gateway. Refer to
  /// [uri] Server-defined URI for this resource.
  GetAppConnectionGateway({
    required this.appGateway,
    required this.ingressPort,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'ingressPort': ingressPort,
      'type': type,
      'uri': uri,
    };
  }

  factory GetAppConnectionGateway.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionGateway(
      appGateway: map['appGateway'] as String,
      ingressPort: map['ingressPort'] as int,
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
