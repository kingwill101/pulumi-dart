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
  /// Parameters for using an Active MQ broker as a source. See `activemqBrokerParameters` Block for details.
  final pulumi.Input<PipeSourceParametersActivemqBrokerParameters?>? activemqBrokerParameters;
  /// Parameters for using a DynamoDB stream as a source. See `dynamodbStreamParameters` Block for details.
  final pulumi.Input<PipeSourceParametersDynamodbStreamParameters?>? dynamodbStreamParameters;
  /// Collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). See `filterCriteria` Block for details.
  final pulumi.Input<PipeSourceParametersFilterCriteria?>? filterCriteria;
  /// Parameters for using a Kinesis stream as a source. See `source_parameters.kinesis_stream_parameters` Block for details.
  final pulumi.Input<PipeSourceParametersKinesisStreamParameters?>? kinesisStreamParameters;
  /// Parameters for using an MSK stream as a source. See `managedStreamingKafkaParameters` Block for details.
  final pulumi.Input<PipeSourceParametersManagedStreamingKafkaParameters?>? managedStreamingKafkaParameters;
  /// Parameters for using a Rabbit MQ broker as a source. See `rabbitmqBrokerParameters` Block for details.
  final pulumi.Input<PipeSourceParametersRabbitmqBrokerParameters?>? rabbitmqBrokerParameters;
  /// Parameters for using a self-managed Apache Kafka stream as a source. See `selfManagedKafkaParameters` Block for details.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParameters?>? selfManagedKafkaParameters;
  /// Parameters for using an Amazon SQS stream as a source. See `source_parameters.sqs_queue_parameters` Block for details.
  final pulumi.Input<PipeSourceParametersSqsQueueParameters?>? sqsQueueParameters;

  /// Creates a new [PipeSourceParameters].
  /// [activemqBrokerParameters] Parameters for using an Active MQ broker as a source. See `activemqBrokerParameters` Block for details.
  /// [dynamodbStreamParameters] Parameters for using a DynamoDB stream as a source. See `dynamodbStreamParameters` Block for details.
  /// [filterCriteria] Collection of event patterns used to [filter events](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-filtering.html). See `filterCriteria` Block for details.
  /// [kinesisStreamParameters] Parameters for using a Kinesis stream as a source. See `source_parameters.kinesis_stream_parameters` Block for details.
  /// [managedStreamingKafkaParameters] Parameters for using an MSK stream as a source. See `managedStreamingKafkaParameters` Block for details.
  /// [rabbitmqBrokerParameters] Parameters for using a Rabbit MQ broker as a source. See `rabbitmqBrokerParameters` Block for details.
  /// [selfManagedKafkaParameters] Parameters for using a self-managed Apache Kafka stream as a source. See `selfManagedKafkaParameters` Block for details.
  /// [sqsQueueParameters] Parameters for using an Amazon SQS stream as a source. See `source_parameters.sqs_queue_parameters` Block for details.
  const PipeSourceParameters({
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
      activemqBrokerParameters: (() { final guardedValue = map['activemqBrokerParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersActivemqBrokerParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamodbStreamParameters: (() { final guardedValue = map['dynamodbStreamParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersDynamodbStreamParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterCriteria: (() { final guardedValue = map['filterCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersFilterCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStreamParameters: (() { final guardedValue = map['kinesisStreamParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersKinesisStreamParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedStreamingKafkaParameters: (() { final guardedValue = map['managedStreamingKafkaParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersManagedStreamingKafkaParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rabbitmqBrokerParameters: (() { final guardedValue = map['rabbitmqBrokerParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersRabbitmqBrokerParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedKafkaParameters: (() { final guardedValue = map['selfManagedKafkaParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSelfManagedKafkaParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqsQueueParameters: (() { final guardedValue = map['sqsQueueParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSqsQueueParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
