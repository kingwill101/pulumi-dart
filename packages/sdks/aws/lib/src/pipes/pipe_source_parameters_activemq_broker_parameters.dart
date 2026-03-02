// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_activemq_broker_parameters_credentials.dart';

class PipeSourceParametersActivemqBrokerParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int>? batchSize;
  /// The credentials needed to access the resource. Detailed below.
  final pulumi.Input<PipeSourceParametersActivemqBrokerParametersCredentials> credentials;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int>? maximumBatchingWindowInSeconds;
  /// The name of the destination queue to consume. Maximum length of 1000.
  final pulumi.Input<String> queueName;

  /// Creates a new [PipeSourceParametersActivemqBrokerParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [credentials] The credentials needed to access the resource. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [queueName] The name of the destination queue to consume. Maximum length of 1000.
  PipeSourceParametersActivemqBrokerParameters({
    this.batchSize,
    required this.credentials,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'credentials': pulumi.Input.mapInputValue<PipeSourceParametersActivemqBrokerParametersCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'queueName': queueName,
    };
  }

  factory PipeSourceParametersActivemqBrokerParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersActivemqBrokerParameters(
      batchSize: map['batchSize'] == null ? null : ((map['batchSize'] as int).input()).input(),
      credentials: (PipeSourceParametersActivemqBrokerParametersCredentials.fromMap((map['credentials']! as Map).cast<String, dynamic>())).input(),
      maximumBatchingWindowInSeconds: map['maximumBatchingWindowInSeconds'] == null ? null : ((map['maximumBatchingWindowInSeconds'] as int).input()).input(),
      queueName: (map['queueName'] as String).input(),
    );
  }
}

