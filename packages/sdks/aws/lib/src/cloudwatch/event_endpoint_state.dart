// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_endpoint_event_bus.dart';
import 'event_endpoint_replication_config.dart';
import 'event_endpoint_routing_config.dart';

/// Input properties used for looking up and filtering EventEndpoint resources.
class EventEndpointState {
  /// The ARN of the endpoint that was created.
  final pulumi.Input<String>? arn;
  /// A description of the global endpoint.
  final pulumi.Input<String>? description;
  /// The URL of the endpoint that was created.
  final pulumi.Input<String>? endpointUrl;
  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  final pulumi.Input<List<EventEndpointEventBus>>? eventBuses;
  /// The name of the global endpoint.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Parameters used for replication. Documented below.
  final pulumi.Input<EventEndpointReplicationConfig>? replicationConfig;
  /// The ARN of the IAM role used for replication between event buses.
  final pulumi.Input<String>? roleArn;
  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  final pulumi.Input<EventEndpointRoutingConfig>? routingConfig;

  /// Creates a new [EventEndpointState].
  /// [arn] The ARN of the endpoint that was created.
  /// [description] A description of the global endpoint.
  /// [endpointUrl] The URL of the endpoint that was created.
  /// [eventBuses] The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  /// [name] The name of the global endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfig] Parameters used for replication. Documented below.
  /// [roleArn] The ARN of the IAM role used for replication between event buses.
  /// [routingConfig] Parameters used for routing, including the health check and secondary Region. Documented below.
  EventEndpointState({
    this.arn,
    this.description,
    this.endpointUrl,
    this.eventBuses,
    this.name,
    this.region,
    this.replicationConfig,
    this.roleArn,
    this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'endpointUrl': ?endpointUrl,
      'eventBuses': ?pulumi.Input.mapOptionalInputValue<List<EventEndpointEventBus>, List<Map<String, dynamic>>>(eventBuses, (value) => pulumi.Input.encodeList<EventEndpointEventBus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'replicationConfig': ?pulumi.Input.mapOptionalInputValue<EventEndpointReplicationConfig, Map<String, dynamic>>(replicationConfig, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<EventEndpointRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
    };
  }

  factory EventEndpointState.fromMap(Map<String, dynamic> map) {
    return EventEndpointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBuses: (() { final guardedValue = map['eventBuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventEndpointEventBus>(guardedValue, (value) => EventEndpointEventBus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationConfig: (() { final guardedValue = map['replicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventEndpointReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfig: (() { final guardedValue = map['routingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventEndpointRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

