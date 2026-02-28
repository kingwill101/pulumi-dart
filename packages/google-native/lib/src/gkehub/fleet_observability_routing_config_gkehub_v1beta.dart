// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_mode_gkehub_v1beta.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigGkehubV1beta {
  /// mode configures the logs routing mode.
  final FleetObservabilityRoutingConfigModeGkehubV1beta? mode;

  /// Creates a new [FleetObservabilityRoutingConfigGkehubV1beta].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigGkehubV1beta({
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

  factory FleetObservabilityRoutingConfigGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigGkehubV1beta(
      mode: map['mode'] == null
          ? null
          : FleetObservabilityRoutingConfigModeGkehubV1beta.fromValue(
              map['mode'] as String),
    );
  }
}
