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

/// {@template pulumi_eventbridge_event_source_v2_event_source_v2_args_doc}
/// The set of arguments for EventSourceV2.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_event_source_v2_event_source_v2_args_doc}
class EventSourceV2Args {
  /// The detail describe of event source
  final pulumi.Input<String>? description;
  /// Name of the bus associated with the event source
  final pulumi.Input<String> eventBusName;
  /// The code name of event source
  final pulumi.Input<String> eventSourceName;
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

  /// Creates a new [EventSourceV2Args].
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
  EventSourceV2Args({
    this.description,
    required this.eventBusName,
    required this.eventSourceName,
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
      'eventBusName': eventBusName,
      'eventSourceName': eventSourceName,
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

  factory EventSourceV2Args.fromMap(Map<String, dynamic> map) {
    return EventSourceV2Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      eventBusName: (map['eventBusName'] as String).input(),
      eventSourceName: (map['eventSourceName'] as String).input(),
      linkedExternalSource: map['linkedExternalSource'] == null ? null : (map['linkedExternalSource']! as bool).input(),
      sourceHttpEventParameters: map['sourceHttpEventParameters'] == null ? null : (EventSourceV2SourceHttpEventParameters.fromMap((map['sourceHttpEventParameters']! as Map).cast<String, dynamic>())).input(),
      sourceKafkaParameters: map['sourceKafkaParameters'] == null ? null : (EventSourceV2SourceKafkaParameters.fromMap((map['sourceKafkaParameters']! as Map).cast<String, dynamic>())).input(),
      sourceMnsParameters: map['sourceMnsParameters'] == null ? null : (EventSourceV2SourceMnsParameters.fromMap((map['sourceMnsParameters']! as Map).cast<String, dynamic>())).input(),
      sourceOssEventParameters: map['sourceOssEventParameters'] == null ? null : (EventSourceV2SourceOssEventParameters.fromMap((map['sourceOssEventParameters']! as Map).cast<String, dynamic>())).input(),
      sourceRabbitMqParameters: map['sourceRabbitMqParameters'] == null ? null : (EventSourceV2SourceRabbitMqParameters.fromMap((map['sourceRabbitMqParameters']! as Map).cast<String, dynamic>())).input(),
      sourceRocketmqParameters: map['sourceRocketmqParameters'] == null ? null : (EventSourceV2SourceRocketmqParameters.fromMap((map['sourceRocketmqParameters']! as Map).cast<String, dynamic>())).input(),
      sourceScheduledEventParameters: map['sourceScheduledEventParameters'] == null ? null : (EventSourceV2SourceScheduledEventParameters.fromMap((map['sourceScheduledEventParameters']! as Map).cast<String, dynamic>())).input(),
      sourceSlsParameters: map['sourceSlsParameters'] == null ? null : (EventSourceV2SourceSlsParameters.fromMap((map['sourceSlsParameters']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

