// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_activemq_broker_parameters.dart';
import 'pipe_source_parameters_dynamodb_stream_parameters.dart';
import 'pipe_source_parameters_filter_criteria.dart';
import 'pipe_source_parameters_kinesis_stream_parameters.dart';
import 'pipe_source_parameters_managed_streaming_kafka_parameters.dart';
import 'pipe_source_parameters_rabbitmq_broker_parameters.dart';
import 'pipe_source_parameters_self_managed_kafka_parameters.dart';
import 'pipe_source_parameters_sqs_queue_parameters.dart';

class PipeSourceParameters {
  /// The parameters for using an Active MQ broker as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersActivemqBrokerParameters>? activemqBrokerParameters;
  /// The parameters for using a DynamoDB stream as a source.  Detailed below.
  final pulumi.Input<PipeSourceParametersDynamodbStreamParameters>? dynamodbStreamParameters;
  /// The collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). Detailed below.
  final pulumi.Input<PipeSourceParametersFilterCriteria>? filterCriteria;
  /// The parameters for using a Kinesis stream as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersKinesisStreamParameters>? kinesisStreamParameters;
  /// The parameters for using an MSK stream as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersManagedStreamingKafkaParameters>? managedStreamingKafkaParameters;
  /// The parameters for using a Rabbit MQ broker as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersRabbitmqBrokerParameters>? rabbitmqBrokerParameters;
  /// The parameters for using a self-managed Apache Kafka stream as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParameters>? selfManagedKafkaParameters;
  /// The parameters for using a Amazon SQS stream as a source. Detailed below.
  final pulumi.Input<PipeSourceParametersSqsQueueParameters>? sqsQueueParameters;

  /// Creates a new [PipeSourceParameters].
  /// [activemqBrokerParameters] The parameters for using an Active MQ broker as a source. Detailed below.
  /// [dynamodbStreamParameters] The parameters for using a DynamoDB stream as a source.  Detailed below.
  /// [filterCriteria] The collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). Detailed below.
  /// [kinesisStreamParameters] The parameters for using a Kinesis stream as a source. Detailed below.
  /// [managedStreamingKafkaParameters] The parameters for using an MSK stream as a source. Detailed below.
  /// [rabbitmqBrokerParameters] The parameters for using a Rabbit MQ broker as a source. Detailed below.
  /// [selfManagedKafkaParameters] The parameters for using a self-managed Apache Kafka stream as a source. Detailed below.
  /// [sqsQueueParameters] The parameters for using a Amazon SQS stream as a source. Detailed below.
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
    return <String, dynamic>{
      'activemqBrokerParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersActivemqBrokerParameters, Map<String, dynamic>>(activemqBrokerParameters, (value) => value.toMap()),
      'dynamodbStreamParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersDynamodbStreamParameters, Map<String, dynamic>>(dynamodbStreamParameters, (value) => value.toMap()),
      'filterCriteria': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersFilterCriteria, Map<String, dynamic>>(filterCriteria, (value) => value.toMap()),
      'kinesisStreamParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersKinesisStreamParameters, Map<String, dynamic>>(kinesisStreamParameters, (value) => value.toMap()),
      'managedStreamingKafkaParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersManagedStreamingKafkaParameters, Map<String, dynamic>>(managedStreamingKafkaParameters, (value) => value.toMap()),
      'rabbitmqBrokerParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersRabbitmqBrokerParameters, Map<String, dynamic>>(rabbitmqBrokerParameters, (value) => value.toMap()),
      'selfManagedKafkaParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersSelfManagedKafkaParameters, Map<String, dynamic>>(selfManagedKafkaParameters, (value) => value.toMap()),
      'sqsQueueParameters': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersSqsQueueParameters, Map<String, dynamic>>(sqsQueueParameters, (value) => value.toMap()),
    };
  }

  factory PipeSourceParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParameters(
      activemqBrokerParameters: map['activemqBrokerParameters'] == null ? null : (PipeSourceParametersActivemqBrokerParameters.fromMap((map['activemqBrokerParameters'] as Map).cast<String, dynamic>())).input(),
      dynamodbStreamParameters: map['dynamodbStreamParameters'] == null ? null : (PipeSourceParametersDynamodbStreamParameters.fromMap((map['dynamodbStreamParameters'] as Map).cast<String, dynamic>())).input(),
      filterCriteria: map['filterCriteria'] == null ? null : (PipeSourceParametersFilterCriteria.fromMap((map['filterCriteria'] as Map).cast<String, dynamic>())).input(),
      kinesisStreamParameters: map['kinesisStreamParameters'] == null ? null : (PipeSourceParametersKinesisStreamParameters.fromMap((map['kinesisStreamParameters'] as Map).cast<String, dynamic>())).input(),
      managedStreamingKafkaParameters: map['managedStreamingKafkaParameters'] == null ? null : (PipeSourceParametersManagedStreamingKafkaParameters.fromMap((map['managedStreamingKafkaParameters'] as Map).cast<String, dynamic>())).input(),
      rabbitmqBrokerParameters: map['rabbitmqBrokerParameters'] == null ? null : (PipeSourceParametersRabbitmqBrokerParameters.fromMap((map['rabbitmqBrokerParameters'] as Map).cast<String, dynamic>())).input(),
      selfManagedKafkaParameters: map['selfManagedKafkaParameters'] == null ? null : (PipeSourceParametersSelfManagedKafkaParameters.fromMap((map['selfManagedKafkaParameters'] as Map).cast<String, dynamic>())).input(),
      sqsQueueParameters: map['sqsQueueParameters'] == null ? null : (PipeSourceParametersSqsQueueParameters.fromMap((map['sqsQueueParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

