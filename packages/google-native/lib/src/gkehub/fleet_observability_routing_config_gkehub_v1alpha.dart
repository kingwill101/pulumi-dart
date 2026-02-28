// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_mode_gkehub_v1alpha.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigGkehubV1alpha {
  /// mode configures the logs routing mode.
  final FleetObservabilityRoutingConfigModeGkehubV1alpha? mode;

  /// Creates a new [FleetObservabilityRoutingConfigGkehubV1alpha].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigGkehubV1alpha({
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

  factory FleetObservabilityRoutingConfigGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigGkehubV1alpha(
      mode: map['mode'] == null
          ? null
          : FleetObservabilityRoutingConfigModeGkehubV1alpha.fromValue(
              map['mode'] as String),
    );
  }
}
