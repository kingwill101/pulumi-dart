// ignore_for_file: unused_element, unnecessary_cast

import 'pipe_source_parameters_rabbitmq_broker_parameters_credentials.dart';

class PipeSourceParametersRabbitmqBrokerParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;

  /// The credentials needed to access the resource. Detailed below.
  final PipeSourceParametersRabbitmqBrokerParametersCredentials credentials;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;

  /// The name of the destination queue to consume. Maximum length of 1000.
  final String queueName;

  /// The name of the virtual host associated with the source broker. Maximum length of 200.
  final String? virtualHost;

  /// Creates a new [PipeSourceParametersRabbitmqBrokerParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [credentials] The credentials needed to access the resource. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [queueName] The name of the destination queue to consume. Maximum length of 1000.
  /// [virtualHost] The name of the virtual host associated with the source broker. Maximum length of 200.
  PipeSourceParametersRabbitmqBrokerParameters({
    this.batchSize,
    required this.credentials,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
    this.virtualHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'credentials': credentials.toMap(),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'queueName': queueName,
      'virtualHost': ?virtualHost,
    };
  }

  factory PipeSourceParametersRabbitmqBrokerParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeSourceParametersRabbitmqBrokerParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      credentials:
          PipeSourceParametersRabbitmqBrokerParametersCredentials.fromMap(
            (map['credentials'] as Map).cast<String, dynamic>(),
          ),
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
          ? null
          : map['maximumBatchingWindowInSeconds'] as int,
      queueName: map['queueName'] as String,
      virtualHost: map['virtualHost'] == null
          ? null
          : map['virtualHost'] as String,
    );
  }
}
