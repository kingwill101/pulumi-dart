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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointUrl,
    pulumi.Output<List<EventEndpointEventBus>>? eventBuses,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<EventEndpointReplicationConfig>? replicationConfig,
    pulumi.Output<String>? roleArn,
    pulumi.Output<EventEndpointRoutingConfig>? routingConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointUrl = pulumi.Input.asOptionalInput<String>(endpointUrl),
      eventBuses = pulumi.Input.asOptionalInput<List<EventEndpointEventBus>>(eventBuses),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationConfig = pulumi.Input.asOptionalInput<EventEndpointReplicationConfig>(replicationConfig),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      routingConfig = pulumi.Input.asOptionalInput<EventEndpointRoutingConfig>(routingConfig);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointUrl: map['endpointUrl'] == null ? null : pulumi.Output.create<String>(map['endpointUrl'] as String),
      eventBuses: map['eventBuses'] == null ? null : pulumi.Output.create<List<EventEndpointEventBus>>(pulumi.Input.decodeList<EventEndpointEventBus>(map['eventBuses'], (value) => EventEndpointEventBus.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationConfig: map['replicationConfig'] == null ? null : pulumi.Output.create<EventEndpointReplicationConfig>(EventEndpointReplicationConfig.fromMap((map['replicationConfig'] as Map).cast<String, dynamic>())),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      routingConfig: map['routingConfig'] == null ? null : pulumi.Output.create<EventEndpointRoutingConfig>(EventEndpointRoutingConfig.fromMap((map['routingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

