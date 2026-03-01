// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_event_source_event_source_args_doc}
/// The set of arguments for EventSource.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_event_source_event_source_args_doc}
class EventSourceArgs {
  /// The description of the event source.
  final pulumi.Input<String>? description;
  /// The name of the event bus to which the event source is attached.
  final pulumi.Input<String> eventBusName;
  /// The name of the event source.
  final pulumi.Input<String> eventSourceName;
  /// The configuration of the external data source.
  /// When `external_source_type` is `RabbitMQ`, The following attributes are supported:
  /// `RegionId` - The region ID of RabbitMQ.
  /// `InstanceId` - The instance ID of RabbitMQ.
  /// `VirtualHostName` - The virtual host name of RabbitMQ.
  /// `QueueName` - The queue name of RabbitMQ.
  /// When `external_source_type` is `RabbitMQ`, The following attributes are supported:
  /// `RegionId` - The region ID of RabbitMQ.
  /// `InstanceId` - The instance ID of RabbitMQ.
  /// `Topic` - The topic of RabbitMQ.
  /// `Offset` -  The offset of RabbitMQ, valid values: `CONSUME_FROM_FIRST_OFFSET`, `CONSUME_FROM_LAST_OFFSET` and `CONSUME_FROM_TIMESTAMP`.
  /// `GroupID` - The group ID of consumer.
  /// When `external_source_type` is `MNS`, The following attributes are supported:
  /// `QueueName` - The queue name of MNS.
  final pulumi.Input<Map<String, String>>? externalSourceConfig;
  /// The type of the external data source. Valid values: `RabbitMQ`, `RocketMQ` and `MNS`.
  final pulumi.Input<String>? externalSourceType;
  /// Specifies whether to connect to an external data source. Default value: `false`.
  final pulumi.Input<bool>? linkedExternalSource;

  /// Creates a new [EventSourceArgs].
  /// [description] The description of the event source.
  /// [eventBusName] The name of the event bus to which the event source is attached.
  /// [eventSourceName] The name of the event source.
  /// [externalSourceConfig] The configuration of the external data source.
  /// [externalSourceType] The type of the external data source. Valid values: `RabbitMQ`, `RocketMQ` and `MNS`.
  /// [linkedExternalSource] Specifies whether to connect to an external data source. Default value: `false`.
  EventSourceArgs({
    String? description,
    required String eventBusName,
    required String eventSourceName,
    Map<String, String>? externalSourceConfig,
    String? externalSourceType,
    bool? linkedExternalSource,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      eventBusName = pulumi.Input.asInput<String>(eventBusName),
      eventSourceName = pulumi.Input.asInput<String>(eventSourceName),
      externalSourceConfig = pulumi.Input.asOptionalInput<Map<String, String>>(externalSourceConfig),
      externalSourceType = pulumi.Input.asOptionalInput<String>(externalSourceType),
      linkedExternalSource = pulumi.Input.asOptionalInput<bool>(linkedExternalSource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': eventBusName,
      'eventSourceName': eventSourceName,
      'externalSourceConfig': ?externalSourceConfig,
      'externalSourceType': ?externalSourceType,
      'linkedExternalSource': ?linkedExternalSource,
    };
  }

  factory EventSourceArgs.fromMap(Map<String, dynamic> map) {
    return EventSourceArgs(
      description: map['description'] == null ? null : map['description'] as String,
      eventBusName: map['eventBusName'] as String,
      eventSourceName: map['eventSourceName'] as String,
      externalSourceConfig: map['externalSourceConfig'] == null ? null : (map['externalSourceConfig'] as Map).cast<String, String>(),
      externalSourceType: map['externalSourceType'] == null ? null : map['externalSourceType'] as String,
      linkedExternalSource: map['linkedExternalSource'] == null ? null : map['linkedExternalSource'] as bool,
    );
  }
}

