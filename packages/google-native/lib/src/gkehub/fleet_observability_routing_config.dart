// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_mode.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfig {
  /// mode configures the logs routing mode.
  final FleetObservabilityRoutingConfigMode? mode;

  /// Creates a new [FleetObservabilityRoutingConfig].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory FleetObservabilityRoutingConfig.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfig(
      mode: map['mode'] == null
          ? null
          : FleetObservabilityRoutingConfigMode.fromValue(
              map['mode'] as String),
    );
  }
}
