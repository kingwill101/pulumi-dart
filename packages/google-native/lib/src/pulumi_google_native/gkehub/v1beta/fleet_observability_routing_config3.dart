// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_mode3.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfig3 {
  /// mode configures the logs routing mode.
  final FleetObservabilityRoutingConfigMode3? mode;

  FleetObservabilityRoutingConfig3({
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

  factory FleetObservabilityRoutingConfig3.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfig3(
      mode: map['mode'] == null
          ? null
          : FleetObservabilityRoutingConfigMode3.fromValue(
              map['mode'] as String),
    );
  }
}
