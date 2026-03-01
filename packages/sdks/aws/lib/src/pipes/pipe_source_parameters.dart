// ignore_for_file: unused_element, unnecessary_cast

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
  final PipeSourceParametersActivemqBrokerParameters? activemqBrokerParameters;
  /// The parameters for using a DynamoDB stream as a source.  Detailed below.
  final PipeSourceParametersDynamodbStreamParameters? dynamodbStreamParameters;
  /// The collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). Detailed below.
  final PipeSourceParametersFilterCriteria? filterCriteria;
  /// The parameters for using a Kinesis stream as a source. Detailed below.
  final PipeSourceParametersKinesisStreamParameters? kinesisStreamParameters;
  /// The parameters for using an MSK stream as a source. Detailed below.
  final PipeSourceParametersManagedStreamingKafkaParameters? managedStreamingKafkaParameters;
  /// The parameters for using a Rabbit MQ broker as a source. Detailed below.
  final PipeSourceParametersRabbitmqBrokerParameters? rabbitmqBrokerParameters;
  /// The parameters for using a self-managed Apache Kafka stream as a source. Detailed below.
  final PipeSourceParametersSelfManagedKafkaParameters? selfManagedKafkaParameters;
  /// The parameters for using a Amazon SQS stream as a source. Detailed below.
  final PipeSourceParametersSqsQueueParameters? sqsQueueParameters;

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
      'activemqBrokerParameters': ?activemqBrokerParameters == null ? null : activemqBrokerParameters!.toMap(),
      'dynamodbStreamParameters': ?dynamodbStreamParameters == null ? null : dynamodbStreamParameters!.toMap(),
      'filterCriteria': ?filterCriteria == null ? null : filterCriteria!.toMap(),
      'kinesisStreamParameters': ?kinesisStreamParameters == null ? null : kinesisStreamParameters!.toMap(),
      'managedStreamingKafkaParameters': ?managedStreamingKafkaParameters == null ? null : managedStreamingKafkaParameters!.toMap(),
      'rabbitmqBrokerParameters': ?rabbitmqBrokerParameters == null ? null : rabbitmqBrokerParameters!.toMap(),
      'selfManagedKafkaParameters': ?selfManagedKafkaParameters == null ? null : selfManagedKafkaParameters!.toMap(),
      'sqsQueueParameters': ?sqsQueueParameters == null ? null : sqsQueueParameters!.toMap(),
    };
  }

  factory PipeSourceParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParameters(
      activemqBrokerParameters: map['activemqBrokerParameters'] == null ? null : PipeSourceParametersActivemqBrokerParameters.fromMap((map['activemqBrokerParameters'] as Map).cast<String, dynamic>()),
      dynamodbStreamParameters: map['dynamodbStreamParameters'] == null ? null : PipeSourceParametersDynamodbStreamParameters.fromMap((map['dynamodbStreamParameters'] as Map).cast<String, dynamic>()),
      filterCriteria: map['filterCriteria'] == null ? null : PipeSourceParametersFilterCriteria.fromMap((map['filterCriteria'] as Map).cast<String, dynamic>()),
      kinesisStreamParameters: map['kinesisStreamParameters'] == null ? null : PipeSourceParametersKinesisStreamParameters.fromMap((map['kinesisStreamParameters'] as Map).cast<String, dynamic>()),
      managedStreamingKafkaParameters: map['managedStreamingKafkaParameters'] == null ? null : PipeSourceParametersManagedStreamingKafkaParameters.fromMap((map['managedStreamingKafkaParameters'] as Map).cast<String, dynamic>()),
      rabbitmqBrokerParameters: map['rabbitmqBrokerParameters'] == null ? null : PipeSourceParametersRabbitmqBrokerParameters.fromMap((map['rabbitmqBrokerParameters'] as Map).cast<String, dynamic>()),
      selfManagedKafkaParameters: map['selfManagedKafkaParameters'] == null ? null : PipeSourceParametersSelfManagedKafkaParameters.fromMap((map['selfManagedKafkaParameters'] as Map).cast<String, dynamic>()),
      sqsQueueParameters: map['sqsQueueParameters'] == null ? null : PipeSourceParametersSqsQueueParameters.fromMap((map['sqsQueueParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

