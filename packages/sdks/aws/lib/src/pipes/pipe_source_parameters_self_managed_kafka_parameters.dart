// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_self_managed_kafka_parameters_credentials.dart';
import 'pipe_source_parameters_self_managed_kafka_parameters_vpc.dart';

class PipeSourceParametersSelfManagedKafkaParameters {
  /// Array of server URLs. Maximum number of 2 items, each of maximum length 300.
  final pulumi.Input<List<String>?>? additionalBootstrapServers;
  /// Maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int?>? batchSize;
  /// Name of the destination queue to consume. Maximum value of 200.
  final pulumi.Input<String?>? consumerGroupId;
  /// Credentials needed to access the resource. See `source_parameters.self_managed_kafka_parameters.credentials` Block for details.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParametersCredentials?>? credentials;
  /// Maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;
  /// ARN of the Secrets Manager secret used for certification.
  final pulumi.Input<String?>? serverRootCaCertificate;
  /// Position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final pulumi.Input<String?>? startingPosition;
  /// Name of the topic that the pipe will read from. Maximum length of 249.
  final pulumi.Input<String> topicName;
  /// VPC subnets and security groups for the stream, and whether a public IP address is to be used. See `vpc` Block for details.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParametersVpc?>? vpc;

  /// Creates a new [PipeSourceParametersSelfManagedKafkaParameters].
  /// [additionalBootstrapServers] Array of server URLs. Maximum number of 2 items, each of maximum length 300.
  /// [batchSize] Maximum number of records to include in each batch. Maximum value of 10000.
  /// [consumerGroupId] Name of the destination queue to consume. Maximum value of 200.
  /// [credentials] Credentials needed to access the resource. See `source_parameters.self_managed_kafka_parameters.credentials` Block for details.
  /// [maximumBatchingWindowInSeconds] Maximum length of a time to wait for events. Maximum value of 300.
  /// [serverRootCaCertificate] ARN of the Secrets Manager secret used for certification.
  /// [startingPosition] Position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  /// [topicName] Name of the topic that the pipe will read from. Maximum length of 249.
  /// [vpc] VPC subnets and security groups for the stream, and whether a public IP address is to be used. See `vpc` Block for details.
  const PipeSourceParametersSelfManagedKafkaParameters({
    this.additionalBootstrapServers,
    this.batchSize,
    this.consumerGroupId,
    this.credentials,
    this.maximumBatchingWindowInSeconds,
    this.serverRootCaCertificate,
    this.startingPosition,
    required this.topicName,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalBootstrapServers': ?additionalBootstrapServers,
      'batchSize': ?batchSize,
      'consumerGroupId': ?consumerGroupId,
      'credentials': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersSelfManagedKafkaParametersCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'serverRootCaCertificate': ?serverRootCaCertificate,
      'startingPosition': ?startingPosition,
      'topicName': topicName,
      'vpc': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersSelfManagedKafkaParametersVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory PipeSourceParametersSelfManagedKafkaParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParameters(
      additionalBootstrapServers: (() { final guardedValue = map['additionalBootstrapServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      consumerGroupId: (() { final guardedValue = map['consumerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverRootCaCertificate: (() { final guardedValue = map['serverRootCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startingPosition: (() { final guardedValue = map['startingPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSelfManagedKafkaParametersVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
