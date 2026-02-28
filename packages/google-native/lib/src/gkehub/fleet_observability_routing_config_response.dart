// ignore_for_file: unused_element, unnecessary_cast


/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponse {
  /// mode configures the logs routing mode.
  final String mode;

  /// Creates a new [FleetObservabilityRoutingConfigResponse].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory FleetObservabilityRoutingConfigResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponse(
      mode: map['mode'] as String,
    );
  }
}

