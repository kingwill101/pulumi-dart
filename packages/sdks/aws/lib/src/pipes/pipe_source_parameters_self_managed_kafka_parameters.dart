// ignore_for_file: unused_element, unnecessary_cast

import 'pipe_source_parameters_self_managed_kafka_parameters_credentials.dart';
import 'pipe_source_parameters_self_managed_kafka_parameters_vpc.dart';

class PipeSourceParametersSelfManagedKafkaParameters {
  /// An array of server URLs. Maximum number of 2 items, each of maximum length 300.
  final List<String>? additionalBootstrapServers;
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;
  /// The name of the destination queue to consume. Maximum value of 200.
  final String? consumerGroupId;
  /// The credentials needed to access the resource. Detailed below.
  final PipeSourceParametersSelfManagedKafkaParametersCredentials? credentials;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;
  /// The ARN of the Secrets Manager secret used for certification.
  final String? serverRootCaCertificate;
  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final String? startingPosition;
  /// The name of the topic that the pipe will read from. Maximum length of 249.
  final String topicName;
  /// This structure specifies the VPC subnets and security groups for the stream, and whether a public IP address is to be used. Detailed below.
  final PipeSourceParametersSelfManagedKafkaParametersVpc? vpc;

  /// Creates a new [PipeSourceParametersSelfManagedKafkaParameters].
  /// [additionalBootstrapServers] An array of server URLs. Maximum number of 2 items, each of maximum length 300.
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [consumerGroupId] The name of the destination queue to consume. Maximum value of 200.
  /// [credentials] The credentials needed to access the resource. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [serverRootCaCertificate] The ARN of the Secrets Manager secret used for certification.
  /// [startingPosition] The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  /// [topicName] The name of the topic that the pipe will read from. Maximum length of 249.
  /// [vpc] This structure specifies the VPC subnets and security groups for the stream, and whether a public IP address is to be used. Detailed below.
  PipeSourceParametersSelfManagedKafkaParameters({
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
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'serverRootCaCertificate': ?serverRootCaCertificate,
      'startingPosition': ?startingPosition,
      'topicName': topicName,
      'vpc': ?vpc == null ? null : vpc!.toMap(),
    };
  }

  factory PipeSourceParametersSelfManagedKafkaParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersSelfManagedKafkaParameters(
      additionalBootstrapServers: map['additionalBootstrapServers'] == null ? null : (map['additionalBootstrapServers'] as List).cast<String>(),
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      consumerGroupId: map['consumerGroupId'] == null ? null : map['consumerGroupId'] as String,
      credentials: map['credentials'] == null ? null : PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      maximumBatchingWindowInSeconds: map['maximumBatchingWindowInSeconds'] == null ? null : map['maximumBatchingWindowInSeconds'] as int,
      serverRootCaCertificate: map['serverRootCaCertificate'] == null ? null : map['serverRootCaCertificate'] as String,
      startingPosition: map['startingPosition'] == null ? null : map['startingPosition'] as String,
      topicName: map['topicName'] as String,
      vpc: map['vpc'] == null ? null : PipeSourceParametersSelfManagedKafkaParametersVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}

