// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_v2_source_http_event_parameters.dart';
import 'event_source_v2_source_kafka_parameters.dart';
import 'event_source_v2_source_mns_parameters.dart';
import 'event_source_v2_source_oss_event_parameters.dart';
import 'event_source_v2_source_rabbit_mq_parameters.dart';
import 'event_source_v2_source_rocketmq_parameters.dart';
import 'event_source_v2_source_scheduled_event_parameters.dart';
import 'event_source_v2_source_sls_parameters.dart';

/// Input properties used for looking up and filtering EventSourceV2 resources.
class EventSourceV2State {
  /// The detail describe of event source
  final pulumi.Input<String>? description;
  /// Name of the bus associated with the event source
  final pulumi.Input<String>? eventBusName;
  /// The code name of event source
  final pulumi.Input<String>? eventSourceName;
  final pulumi.Input<bool>? linkedExternalSource;
  /// The request parameter SourceHttpEventParameters. See `source_http_event_parameters` below.
  final pulumi.Input<EventSourceV2SourceHttpEventParameters>? sourceHttpEventParameters;
  /// Kafka event source parameter. See `source_kafka_parameters` below.
  final pulumi.Input<EventSourceV2SourceKafkaParameters>? sourceKafkaParameters;
  /// Lightweight message queue (formerly MNS) event source parameter. See `source_mns_parameters` below.
  final pulumi.Input<EventSourceV2SourceMnsParameters>? sourceMnsParameters;
  /// OSS event source parameters See `source_oss_event_parameters` below.
  final pulumi.Input<EventSourceV2SourceOssEventParameters>? sourceOssEventParameters;
  /// The request parameter SourceRabbitMQParameters. See `source_rabbit_mq_parameters` below.
  final pulumi.Input<EventSourceV2SourceRabbitMqParameters>? sourceRabbitMqParameters;
  /// The request parameter SourceRocketMQParameters. See `source_rocketmq_parameters` below.
  final pulumi.Input<EventSourceV2SourceRocketmqParameters>? sourceRocketmqParameters;
  /// Time event source parameter. See `source_scheduled_event_parameters` below.
  final pulumi.Input<EventSourceV2SourceScheduledEventParameters>? sourceScheduledEventParameters;
  /// The request parameter SourceSLSParameters. See `source_sls_parameters` below.
  final pulumi.Input<EventSourceV2SourceSlsParameters>? sourceSlsParameters;

  /// Creates a new [EventSourceV2State].
  /// [description] The detail describe of event source
  /// [eventBusName] Name of the bus associated with the event source
  /// [eventSourceName] The code name of event source
  /// [linkedExternalSource] Optional.
  /// [sourceHttpEventParameters] The request parameter SourceHttpEventParameters. See `source_http_event_parameters` below.
  /// [sourceKafkaParameters] Kafka event source parameter. See `source_kafka_parameters` below.
  /// [sourceMnsParameters] Lightweight message queue (formerly MNS) event source parameter. See `source_mns_parameters` below.
  /// [sourceOssEventParameters] OSS event source parameters See `source_oss_event_parameters` below.
  /// [sourceRabbitMqParameters] The request parameter SourceRabbitMQParameters. See `source_rabbit_mq_parameters` below.
  /// [sourceRocketmqParameters] The request parameter SourceRocketMQParameters. See `source_rocketmq_parameters` below.
  /// [sourceScheduledEventParameters] Time event source parameter. See `source_scheduled_event_parameters` below.
  /// [sourceSlsParameters] The request parameter SourceSLSParameters. See `source_sls_parameters` below.
  const EventSourceV2State({
    this.description,
    this.eventBusName,
    this.eventSourceName,
    this.linkedExternalSource,
    this.sourceHttpEventParameters,
    this.sourceKafkaParameters,
    this.sourceMnsParameters,
    this.sourceOssEventParameters,
    this.sourceRabbitMqParameters,
    this.sourceRocketmqParameters,
    this.sourceScheduledEventParameters,
    this.sourceSlsParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': ?eventBusName,
      'eventSourceName': ?eventSourceName,
      'linkedExternalSource': ?linkedExternalSource,
      'sourceHttpEventParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceHttpEventParameters, Map<String, dynamic>>(sourceHttpEventParameters, (value) => value.toMap()),
      'sourceKafkaParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceKafkaParameters, Map<String, dynamic>>(sourceKafkaParameters, (value) => value.toMap()),
      'sourceMnsParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceMnsParameters, Map<String, dynamic>>(sourceMnsParameters, (value) => value.toMap()),
      'sourceOssEventParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceOssEventParameters, Map<String, dynamic>>(sourceOssEventParameters, (value) => value.toMap()),
      'sourceRabbitMqParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceRabbitMqParameters, Map<String, dynamic>>(sourceRabbitMqParameters, (value) => value.toMap()),
      'sourceRocketmqParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceRocketmqParameters, Map<String, dynamic>>(sourceRocketmqParameters, (value) => value.toMap()),
      'sourceScheduledEventParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceScheduledEventParameters, Map<String, dynamic>>(sourceScheduledEventParameters, (value) => value.toMap()),
      'sourceSlsParameters': ?pulumi.Input.mapOptionalInputValue<EventSourceV2SourceSlsParameters, Map<String, dynamic>>(sourceSlsParameters, (value) => value.toMap()),
    };
  }

  factory EventSourceV2State.fromMap(Map<String, dynamic> map) {
    return EventSourceV2State(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBusName: (() { final guardedValue = map['eventBusName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventSourceName: (() { final guardedValue = map['eventSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedExternalSource: (() { final guardedValue = map['linkedExternalSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceHttpEventParameters: (() { final guardedValue = map['sourceHttpEventParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceHttpEventParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceKafkaParameters: (() { final guardedValue = map['sourceKafkaParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceKafkaParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceMnsParameters: (() { final guardedValue = map['sourceMnsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceMnsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceOssEventParameters: (() { final guardedValue = map['sourceOssEventParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceOssEventParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceRabbitMqParameters: (() { final guardedValue = map['sourceRabbitMqParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceRabbitMqParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceRocketmqParameters: (() { final guardedValue = map['sourceRocketmqParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceRocketmqParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceScheduledEventParameters: (() { final guardedValue = map['sourceScheduledEventParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceScheduledEventParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSlsParameters: (() { final guardedValue = map['sourceSlsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceV2SourceSlsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

