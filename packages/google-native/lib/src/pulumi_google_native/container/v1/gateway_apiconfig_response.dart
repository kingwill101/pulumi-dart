// ignore_for_file: unused_element, unnecessary_cast

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigResponse {
  /// The Gateway API release channel to use for Gateway API.
  final String channel;

  GatewayAPIConfigResponse({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    return map;
  }

  factory GatewayAPIConfigResponse.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigResponse(
      channel: map['channel'] as String,
    );
  }
}
