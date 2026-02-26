// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_endpoint_event_bus/event_endpoint_event_bus.dart';
import '../event_endpoint_replication_config/event_endpoint_replication_config.dart';
import '../event_endpoint_routing_config/event_endpoint_routing_config.dart';

/// The set of arguments for EventEndpoint.
class EventEndpointArgs {
  /// A description of the global endpoint.
  final Input<String>? description;

  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  final Input<List<EventEndpointEventBus>> eventBuses;

  /// The name of the global endpoint.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Parameters used for replication. Documented below.
  final Input<EventEndpointReplicationConfig>? replicationConfig;

  /// The ARN of the IAM role used for replication between event buses.
  final Input<String>? roleArn;

  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  final Input<EventEndpointRoutingConfig> routingConfig;

  EventEndpointArgs({
    this.description,
    required this.eventBuses,
    this.name,
    this.region,
    this.replicationConfig,
    this.roleArn,
    required this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['eventBuses'] = Input.mapInputValue<List<EventEndpointEventBus>,
            List<Map<String, dynamic>>>(
        eventBuses,
        (value) =>
            Input.encodeList<EventEndpointEventBus, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationConfigValue = replicationConfig;
    if (replicationConfigValue != null) {
      map['replicationConfig'] = Input.mapOptionalInputValue<
              EventEndpointReplicationConfig, Map<String, dynamic>>(
          replicationConfigValue, (value) => value.toMap());
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['routingConfig'] =
        Input.mapInputValue<EventEndpointRoutingConfig, Map<String, dynamic>>(
            routingConfig, (value) => value.toMap());
    return map;
  }

  factory EventEndpointArgs.fromMap(Map<String, dynamic> map) {
    return EventEndpointArgs(
      description: Input.asOptionalInput<String>(map['description']),
      eventBuses: Input.asInput<List<EventEndpointEventBus>>(map['eventBuses']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationConfig: Input.asOptionalInput<EventEndpointReplicationConfig>(
          map['replicationConfig']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      routingConfig:
          Input.asInput<EventEndpointRoutingConfig>(map['routingConfig']),
    );
  }
}
