// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventSource resources.
class EventSourceState {
  /// The description of the event source.
  final pulumi.Input<String>? description;
  /// The name of the event bus to which the event source is attached.
  final pulumi.Input<String>? eventBusName;
  /// The name of the event source.
  final pulumi.Input<String>? eventSourceName;
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

  /// Creates a new [EventSourceState].
  /// [description] The description of the event source.
  /// [eventBusName] The name of the event bus to which the event source is attached.
  /// [eventSourceName] The name of the event source.
  /// [externalSourceConfig] The configuration of the external data source.
  /// [externalSourceType] The type of the external data source. Valid values: `RabbitMQ`, `RocketMQ` and `MNS`.
  /// [linkedExternalSource] Specifies whether to connect to an external data source. Default value: `false`.
  EventSourceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventBusName,
    pulumi.Output<String>? eventSourceName,
    pulumi.Output<Map<String, String>>? externalSourceConfig,
    pulumi.Output<String>? externalSourceType,
    pulumi.Output<bool>? linkedExternalSource,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      eventBusName = pulumi.Input.asOptionalInput<String>(eventBusName),
      eventSourceName = pulumi.Input.asOptionalInput<String>(eventSourceName),
      externalSourceConfig = pulumi.Input.asOptionalInput<Map<String, String>>(externalSourceConfig),
      externalSourceType = pulumi.Input.asOptionalInput<String>(externalSourceType),
      linkedExternalSource = pulumi.Input.asOptionalInput<bool>(linkedExternalSource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': ?eventBusName,
      'eventSourceName': ?eventSourceName,
      'externalSourceConfig': ?externalSourceConfig,
      'externalSourceType': ?externalSourceType,
      'linkedExternalSource': ?linkedExternalSource,
    };
  }

  factory EventSourceState.fromMap(Map<String, dynamic> map) {
    return EventSourceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventBusName: map['eventBusName'] == null ? null : pulumi.Output.create<String>(map['eventBusName'] as String),
      eventSourceName: map['eventSourceName'] == null ? null : pulumi.Output.create<String>(map['eventSourceName'] as String),
      externalSourceConfig: map['externalSourceConfig'] == null ? null : pulumi.Output.create<Map<String, String>>((map['externalSourceConfig'] as Map).cast<String, String>()),
      externalSourceType: map['externalSourceType'] == null ? null : pulumi.Output.create<String>(map['externalSourceType'] as String),
      linkedExternalSource: map['linkedExternalSource'] == null ? null : pulumi.Output.create<bool>(map['linkedExternalSource'] as bool),
    );
  }
}

