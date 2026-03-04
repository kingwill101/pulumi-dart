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
    this.description,
    this.eventBusName,
    this.eventSourceName,
    this.externalSourceConfig,
    this.externalSourceType,
    this.linkedExternalSource,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventBusName: (() {
        final guardedValue = map['eventBusName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSourceName: (() {
        final guardedValue = map['eventSourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalSourceConfig: (() {
        final guardedValue = map['externalSourceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      externalSourceType: (() {
        final guardedValue = map['externalSourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedExternalSource: (() {
        final guardedValue = map['linkedExternalSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
