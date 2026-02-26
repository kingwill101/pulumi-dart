// ignore_for_file: unused_element, unnecessary_cast

import '../pipe_source_parameters_activemq_broker_parameters/pipe_source_parameters_activemq_broker_parameters.dart';
import '../pipe_source_parameters_dynamodb_stream_parameters/pipe_source_parameters_dynamodb_stream_parameters.dart';
import '../pipe_source_parameters_filter_criteria/pipe_source_parameters_filter_criteria.dart';
import '../pipe_source_parameters_kinesis_stream_parameters/pipe_source_parameters_kinesis_stream_parameters.dart';
import '../pipe_source_parameters_managed_streaming_kafka_parameters/pipe_source_parameters_managed_streaming_kafka_parameters.dart';
import '../pipe_source_parameters_rabbitmq_broker_parameters/pipe_source_parameters_rabbitmq_broker_parameters.dart';
import '../pipe_source_parameters_self_managed_kafka_parameters/pipe_source_parameters_self_managed_kafka_parameters.dart';
import '../pipe_source_parameters_sqs_queue_parameters/pipe_source_parameters_sqs_queue_parameters.dart';

class PipeSourceParameters {
  /// The parameters for using an Active MQ broker as a source. Detailed below.
  final PipeSourceParametersActivemqBrokerParameters? activemqBrokerParameters;

  /// The parameters for using a DynamoDB stream as a source.  Detailed below.
  final PipeSourceParametersDynamodbStreamParameters? dynamodbStreamParameters;

  /// The collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). Detailed below.
  final PipeSourceParametersFilterCriteria? filterCriteria;

  /// The parameters for using a Kinesis stream as a source. Detailed below.
  final PipeSourceParametersKinesisStreamParameters? kinesisStreamParameters;

  /// The parameters for using an MSK stream as a source. Detailed below.
  final PipeSourceParametersManagedStreamingKafkaParameters?
      managedStreamingKafkaParameters;

  /// The parameters for using a Rabbit MQ broker as a source. Detailed below.
  final PipeSourceParametersRabbitmqBrokerParameters? rabbitmqBrokerParameters;

  /// The parameters for using a self-managed Apache Kafka stream as a source. Detailed below.
  final PipeSourceParametersSelfManagedKafkaParameters?
      selfManagedKafkaParameters;

  /// The parameters for using a Amazon SQS stream as a source. Detailed below.
  final PipeSourceParametersSqsQueueParameters? sqsQueueParameters;

  PipeSourceParameters({
    this.activemqBrokerParameters,
    this.dynamodbStreamParameters,
    this.filterCriteria,
    this.kinesisStreamParameters,
    this.managedStreamingKafkaParameters,
    this.rabbitmqBrokerParameters,
    this.selfManagedKafkaParameters,
    this.sqsQueueParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activemqBrokerParametersValue = activemqBrokerParameters;
    if (activemqBrokerParametersValue != null) {
      map['activemqBrokerParameters'] = activemqBrokerParametersValue.toMap();
    }
    final dynamodbStreamParametersValue = dynamodbStreamParameters;
    if (dynamodbStreamParametersValue != null) {
      map['dynamodbStreamParameters'] = dynamodbStreamParametersValue.toMap();
    }
    final filterCriteriaValue = filterCriteria;
    if (filterCriteriaValue != null) {
      map['filterCriteria'] = filterCriteriaValue.toMap();
    }
    final kinesisStreamParametersValue = kinesisStreamParameters;
    if (kinesisStreamParametersValue != null) {
      map['kinesisStreamParameters'] = kinesisStreamParametersValue.toMap();
    }
    final managedStreamingKafkaParametersValue =
        managedStreamingKafkaParameters;
    if (managedStreamingKafkaParametersValue != null) {
      map['managedStreamingKafkaParameters'] =
          managedStreamingKafkaParametersValue.toMap();
    }
    final rabbitmqBrokerParametersValue = rabbitmqBrokerParameters;
    if (rabbitmqBrokerParametersValue != null) {
      map['rabbitmqBrokerParameters'] = rabbitmqBrokerParametersValue.toMap();
    }
    final selfManagedKafkaParametersValue = selfManagedKafkaParameters;
    if (selfManagedKafkaParametersValue != null) {
      map['selfManagedKafkaParameters'] =
          selfManagedKafkaParametersValue.toMap();
    }
    final sqsQueueParametersValue = sqsQueueParameters;
    if (sqsQueueParametersValue != null) {
      map['sqsQueueParameters'] = sqsQueueParametersValue.toMap();
    }
    return map;
  }

  factory PipeSourceParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParameters(
      activemqBrokerParameters: map['activemqBrokerParameters'] == null
          ? null
          : PipeSourceParametersActivemqBrokerParameters.fromMap(
              (map['activemqBrokerParameters'] as Map).cast<String, dynamic>()),
      dynamodbStreamParameters: map['dynamodbStreamParameters'] == null
          ? null
          : PipeSourceParametersDynamodbStreamParameters.fromMap(
              (map['dynamodbStreamParameters'] as Map).cast<String, dynamic>()),
      filterCriteria: map['filterCriteria'] == null
          ? null
          : PipeSourceParametersFilterCriteria.fromMap(
              (map['filterCriteria'] as Map).cast<String, dynamic>()),
      kinesisStreamParameters: map['kinesisStreamParameters'] == null
          ? null
          : PipeSourceParametersKinesisStreamParameters.fromMap(
              (map['kinesisStreamParameters'] as Map).cast<String, dynamic>()),
      managedStreamingKafkaParameters:
          map['managedStreamingKafkaParameters'] == null
              ? null
              : PipeSourceParametersManagedStreamingKafkaParameters.fromMap(
                  (map['managedStreamingKafkaParameters'] as Map)
                      .cast<String, dynamic>()),
      rabbitmqBrokerParameters: map['rabbitmqBrokerParameters'] == null
          ? null
          : PipeSourceParametersRabbitmqBrokerParameters.fromMap(
              (map['rabbitmqBrokerParameters'] as Map).cast<String, dynamic>()),
      selfManagedKafkaParameters: map['selfManagedKafkaParameters'] == null
          ? null
          : PipeSourceParametersSelfManagedKafkaParameters.fromMap(
              (map['selfManagedKafkaParameters'] as Map)
                  .cast<String, dynamic>()),
      sqsQueueParameters: map['sqsQueueParameters'] == null
          ? null
          : PipeSourceParametersSqsQueueParameters.fromMap(
              (map['sqsQueueParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
