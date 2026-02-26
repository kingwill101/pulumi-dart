// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_mode2.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfig2 {
  /// mode configures the logs routing mode.
  final FleetObservabilityRoutingConfigMode2? mode;

  FleetObservabilityRoutingConfig2({
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

  factory FleetObservabilityRoutingConfig2.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfig2(
      mode: map['mode'] == null
          ? null
          : FleetObservabilityRoutingConfigMode2.fromValue(
              map['mode'] as String),
    );
  }
}
