// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_endpoint_event_bus.dart';
import 'event_endpoint_replication_config.dart';
import 'event_endpoint_routing_config.dart';

/// {@template pulumi_cloudwatch_event_endpoint_event_endpoint_args_doc}
/// The set of arguments for EventEndpoint.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_endpoint_event_endpoint_args_doc}
class EventEndpointArgs {
  /// A description of the global endpoint.
  final pulumi.Input<String>? description;

  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  final pulumi.Input<List<EventEndpointEventBus>> eventBuses;

  /// The name of the global endpoint.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Parameters used for replication. Documented below.
  final pulumi.Input<EventEndpointReplicationConfig>? replicationConfig;

  /// The ARN of the IAM role used for replication between event buses.
  final pulumi.Input<String>? roleArn;

  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  final pulumi.Input<EventEndpointRoutingConfig> routingConfig;

  /// Creates a new [EventEndpointArgs].
  /// [description] A description of the global endpoint.
  /// [eventBuses] The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  /// [name] The name of the global endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfig] Parameters used for replication. Documented below.
  /// [roleArn] The ARN of the IAM role used for replication between event buses.
  /// [routingConfig] Parameters used for routing, including the health check and secondary Region. Documented below.
  EventEndpointArgs({
    String? description,
    required List<EventEndpointEventBus> eventBuses,
    String? name,
    String? region,
    EventEndpointReplicationConfig? replicationConfig,
    String? roleArn,
    required EventEndpointRoutingConfig routingConfig,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       eventBuses = pulumi.Input.asInput<List<EventEndpointEventBus>>(
         eventBuses,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       replicationConfig =
           pulumi.Input.asOptionalInput<EventEndpointReplicationConfig>(
             replicationConfig,
           ),
       roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
       routingConfig = pulumi.Input.asInput<EventEndpointRoutingConfig>(
         routingConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBuses':
          pulumi.Input.mapInputValue<
            List<EventEndpointEventBus>,
            List<Map<String, dynamic>>
          >(
            eventBuses,
            (value) =>
                pulumi.Input.encodeList<
                  EventEndpointEventBus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'region': ?region,
      'replicationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventEndpointReplicationConfig,
            Map<String, dynamic>
          >(replicationConfig, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'routingConfig':
          pulumi.Input.mapInputValue<
            EventEndpointRoutingConfig,
            Map<String, dynamic>
          >(routingConfig, (value) => value.toMap()),
    };
  }

  factory EventEndpointArgs.fromMap(Map<String, dynamic> map) {
    return EventEndpointArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      eventBuses: pulumi.Input.decodeList<EventEndpointEventBus>(
        map['eventBuses'],
        (value) => EventEndpointEventBus.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationConfig: map['replicationConfig'] == null
          ? null
          : EventEndpointReplicationConfig.fromMap(
              (map['replicationConfig'] as Map).cast<String, dynamic>(),
            ),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      routingConfig: EventEndpointRoutingConfig.fromMap(
        (map['routingConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
