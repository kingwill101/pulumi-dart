// ignore_for_file: unused_element, unnecessary_cast

import 'event_endpoint_routing_config_failover_config.dart';

class EventEndpointRoutingConfig {
  /// Parameters used for failover. This includes what triggers failover and what happens when it's triggered. Documented below.
  final EventEndpointRoutingConfigFailoverConfig failoverConfig;

  /// Creates a new [EventEndpointRoutingConfig].
  /// [failoverConfig] Parameters used for failover. This includes what triggers failover and what happens when it's triggered. Documented below.
  EventEndpointRoutingConfig({required this.failoverConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'failoverConfig': failoverConfig.toMap()};
  }

  factory EventEndpointRoutingConfig.fromMap(Map<String, dynamic> map) {
    return EventEndpointRoutingConfig(
      failoverConfig: EventEndpointRoutingConfigFailoverConfig.fromMap(
        (map['failoverConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
