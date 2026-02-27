// ignore_for_file: unused_element, unnecessary_cast

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponseGkehubV1beta {
  /// mode configures the logs routing mode.
  final String mode;

  FleetObservabilityRoutingConfigResponseGkehubV1beta({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory FleetObservabilityRoutingConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponseGkehubV1beta(
      mode: map['mode'] as String,
    );
  }
}
