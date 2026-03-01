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
    pulumi.Output<String>? description,
    required pulumi.Output<String> eventBusName,
    required pulumi.Output<String> eventSourceName,
    pulumi.Output<bool>? linkedExternalSource,
    pulumi.Output<EventSourceV2SourceHttpEventParameters>? sourceHttpEventParameters,
    pulumi.Output<EventSourceV2SourceKafkaParameters>? sourceKafkaParameters,
    pulumi.Output<EventSourceV2SourceMnsParameters>? sourceMnsParameters,
    pulumi.Output<EventSourceV2SourceOssEventParameters>? sourceOssEventParameters,
    pulumi.Output<EventSourceV2SourceRabbitMqParameters>? sourceRabbitMqParameters,
    pulumi.Output<EventSourceV2SourceRocketmqParameters>? sourceRocketmqParameters,
    pulumi.Output<EventSourceV2SourceScheduledEventParameters>? sourceScheduledEventParameters,
    pulumi.Output<EventSourceV2SourceSlsParameters>? sourceSlsParameters,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      eventBusName = pulumi.Input.asInput<String>(eventBusName),
      eventSourceName = pulumi.Input.asInput<String>(eventSourceName),
      linkedExternalSource = pulumi.Input.asOptionalInput<bool>(linkedExternalSource),
      sourceHttpEventParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceHttpEventParameters>(sourceHttpEventParameters),
      sourceKafkaParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceKafkaParameters>(sourceKafkaParameters),
      sourceMnsParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceMnsParameters>(sourceMnsParameters),
      sourceOssEventParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceOssEventParameters>(sourceOssEventParameters),
      sourceRabbitMqParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceRabbitMqParameters>(sourceRabbitMqParameters),
      sourceRocketmqParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceRocketmqParameters>(sourceRocketmqParameters),
      sourceScheduledEventParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceScheduledEventParameters>(sourceScheduledEventParameters),
      sourceSlsParameters = pulumi.Input.asOptionalInput<EventSourceV2SourceSlsParameters>(sourceSlsParameters);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventBusName: pulumi.Output.create<String>(map['eventBusName'] as String),
      eventSourceName: pulumi.Output.create<String>(map['eventSourceName'] as String),
      linkedExternalSource: map['linkedExternalSource'] == null ? null : pulumi.Output.create<bool>(map['linkedExternalSource'] as bool),
      sourceHttpEventParameters: map['sourceHttpEventParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceHttpEventParameters>(EventSourceV2SourceHttpEventParameters.fromMap((map['sourceHttpEventParameters'] as Map).cast<String, dynamic>())),
      sourceKafkaParameters: map['sourceKafkaParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceKafkaParameters>(EventSourceV2SourceKafkaParameters.fromMap((map['sourceKafkaParameters'] as Map).cast<String, dynamic>())),
      sourceMnsParameters: map['sourceMnsParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceMnsParameters>(EventSourceV2SourceMnsParameters.fromMap((map['sourceMnsParameters'] as Map).cast<String, dynamic>())),
      sourceOssEventParameters: map['sourceOssEventParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceOssEventParameters>(EventSourceV2SourceOssEventParameters.fromMap((map['sourceOssEventParameters'] as Map).cast<String, dynamic>())),
      sourceRabbitMqParameters: map['sourceRabbitMqParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceRabbitMqParameters>(EventSourceV2SourceRabbitMqParameters.fromMap((map['sourceRabbitMqParameters'] as Map).cast<String, dynamic>())),
      sourceRocketmqParameters: map['sourceRocketmqParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceRocketmqParameters>(EventSourceV2SourceRocketmqParameters.fromMap((map['sourceRocketmqParameters'] as Map).cast<String, dynamic>())),
      sourceScheduledEventParameters: map['sourceScheduledEventParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceScheduledEventParameters>(EventSourceV2SourceScheduledEventParameters.fromMap((map['sourceScheduledEventParameters'] as Map).cast<String, dynamic>())),
      sourceSlsParameters: map['sourceSlsParameters'] == null ? null : pulumi.Output.create<EventSourceV2SourceSlsParameters>(EventSourceV2SourceSlsParameters.fromMap((map['sourceSlsParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

