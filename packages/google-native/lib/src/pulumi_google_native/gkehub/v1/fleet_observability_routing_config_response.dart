// ignore_for_file: unused_element, unnecessary_cast

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponse {
  /// mode configures the logs routing mode.
  final String mode;

  FleetObservabilityRoutingConfigResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory FleetObservabilityRoutingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponse(
      mode: map['mode'] as String,
    );
  }
}
