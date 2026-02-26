// ignore_for_file: unused_element, unnecessary_cast

class AppConnectionGateway {
  /// AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  final String appGateway;

  /// (Output)
  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final int? ingressPort;

  /// The type of hosting used by the gateway. Refer to
  /// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
  /// for a list of possible values.
  final String? type;

  /// (Output)
  /// Server-defined URI for this resource.
  final String? uri;

  AppConnectionGateway({
    required this.appGateway,
    this.ingressPort,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGateway'] = appGateway;
    final ingressPortValue = ingressPort;
    if (ingressPortValue != null) {
      map['ingressPort'] = ingressPortValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory AppConnectionGateway.fromMap(Map<String, dynamic> map) {
    return AppConnectionGateway(
      appGateway: map['appGateway'] as String,
      ingressPort:
          map['ingressPort'] == null ? null : map['ingressPort'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
