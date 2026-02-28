// ignore_for_file: unused_element, unnecessary_cast

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponseGkehubV1alpha {
  /// mode configures the logs routing mode.
  final String mode;

  /// Creates a new [FleetObservabilityRoutingConfigResponseGkehubV1alpha].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigResponseGkehubV1alpha({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory FleetObservabilityRoutingConfigResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponseGkehubV1alpha(
      mode: map['mode'] as String,
    );
  }
}
