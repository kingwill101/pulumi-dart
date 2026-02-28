// ignore_for_file: unused_element, unnecessary_cast

import 'event_endpoint_routing_config_failover_config_primary.dart';
import 'event_endpoint_routing_config_failover_config_secondary.dart';

class EventEndpointRoutingConfigFailoverConfig {
  /// Parameters used for the primary Region. Documented below.
  final EventEndpointRoutingConfigFailoverConfigPrimary primary;

  /// Parameters used for the secondary Region, the Region that events are routed to when failover is triggered or event replication is enabled. Documented below.
  final EventEndpointRoutingConfigFailoverConfigSecondary secondary;

  /// Creates a new [EventEndpointRoutingConfigFailoverConfig].
  /// [primary] Parameters used for the primary Region. Documented below.
  /// [secondary] Parameters used for the secondary Region, the Region that events are routed to when failover is triggered or event replication is enabled. Documented below.
  EventEndpointRoutingConfigFailoverConfig({
    required this.primary,
    required this.secondary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primary'] = primary.toMap();
    map['secondary'] = secondary.toMap();
    return map;
  }

  factory EventEndpointRoutingConfigFailoverConfig.fromMap(
      Map<String, dynamic> map) {
    return EventEndpointRoutingConfigFailoverConfig(
      primary: EventEndpointRoutingConfigFailoverConfigPrimary.fromMap(
          (map['primary'] as Map).cast<String, dynamic>()),
      secondary: EventEndpointRoutingConfigFailoverConfigSecondary.fromMap(
          (map['secondary'] as Map).cast<String, dynamic>()),
    );
  }
}
