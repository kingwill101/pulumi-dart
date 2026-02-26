// ignore_for_file: unused_element, unnecessary_cast

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponse2 {
  /// mode configures the logs routing mode.
  final String mode;

  FleetObservabilityRoutingConfigResponse2({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory FleetObservabilityRoutingConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponse2(
      mode: map['mode'] as String,
    );
  }
}
