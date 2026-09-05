// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_self_managed_kafka_parameters_credentials.dart';
import 'pipe_source_parameters_self_managed_kafka_parameters_vpc.dart';

class PipeSourceParametersSelfManagedKafkaParameters {
  /// An array of server URLs. Maximum number of 2 items, each of maximum length 300.
  final pulumi.Input<List<String>?>? additionalBootstrapServers;
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int?>? batchSize;
  /// The name of the destination queue to consume. Maximum value of 200.
  final pulumi.Input<String?>? consumerGroupId;
  /// The credentials needed to access the resource. Detailed below.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParametersCredentials?>? credentials;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;
  /// The ARN of the Secrets Manager secret used for certification.
  final pulumi.Input<String?>? serverRootCaCertificate;
  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final pulumi.Input<String?>? startingPosition;
  /// The name of the topic that the pipe will read from. Maximum length of 249.
  final pulumi.Input<String> topicName;
  /// This structure specifies the VPC subnets and security groups for the stream, and whether a public IP address is to be used. Detailed below.
  final pulumi.Input<PipeSourceParametersSelfManagedKafkaParametersVpc?>? vpc;

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
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      consumerGroupId: (() { final guardedValue = map['consumerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSelfManagedKafkaParametersCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serverRootCaCertificate: (() { final guardedValue = map['serverRootCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startingPosition: (() { final guardedValue = map['startingPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersSelfManagedKafkaParametersVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
