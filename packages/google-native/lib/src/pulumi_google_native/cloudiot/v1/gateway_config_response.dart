// ignore_for_file: unused_element, unnecessary_cast

/// Gateway-related configuration and state.
class GatewayConfigResponse {
  /// Indicates how to authorize and/or authenticate devices to access the gateway.
  final String gatewayAuthMethod;

  /// Indicates whether the device is a gateway.
  final String gatewayType;

  /// [Output only] The ID of the gateway the device accessed most recently.
  final String lastAccessedGatewayId;

  /// [Output only] The most recent time at which the device accessed the gateway specified in `last_accessed_gateway`.
  final String lastAccessedGatewayTime;

  GatewayConfigResponse({
    required this.gatewayAuthMethod,
    required this.gatewayType,
    required this.lastAccessedGatewayId,
    required this.lastAccessedGatewayTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gatewayAuthMethod'] = gatewayAuthMethod;
    map['gatewayType'] = gatewayType;
    map['lastAccessedGatewayId'] = lastAccessedGatewayId;
    map['lastAccessedGatewayTime'] = lastAccessedGatewayTime;
    return map;
  }

  factory GatewayConfigResponse.fromMap(Map<String, dynamic> map) {
    return GatewayConfigResponse(
      gatewayAuthMethod: map['gatewayAuthMethod'] as String,
      gatewayType: map['gatewayType'] as String,
      lastAccessedGatewayId: map['lastAccessedGatewayId'] as String,
      lastAccessedGatewayTime: map['lastAccessedGatewayTime'] as String,
    );
  }
}
