// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_endpoint_routing_config_failover_config.dart';

class EventEndpointRoutingConfig {
  /// Parameters used for failover. This includes what triggers failover and what happens when it's triggered. Documented below.
  final pulumi.Input<EventEndpointRoutingConfigFailoverConfig> failoverConfig;

  /// Creates a new [EventEndpointRoutingConfig].
  /// [failoverConfig] Parameters used for failover. This includes what triggers failover and what happens when it's triggered. Documented below.
  const EventEndpointRoutingConfig({
    required this.failoverConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverConfig': pulumi.Input.mapInputValue<EventEndpointRoutingConfigFailoverConfig, Map<String, dynamic>>(failoverConfig, (value) => value.toMap()),
    };
  }

  factory EventEndpointRoutingConfig.fromMap(Map<String, dynamic> map) {
    return EventEndpointRoutingConfig(
      failoverConfig: pulumi.Input.fromValue(EventEndpointRoutingConfigFailoverConfig.fromMap((map['failoverConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
