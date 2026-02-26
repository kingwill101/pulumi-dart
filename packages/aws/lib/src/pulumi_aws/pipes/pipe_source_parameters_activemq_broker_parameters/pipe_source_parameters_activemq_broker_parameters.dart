// ignore_for_file: unused_element, unnecessary_cast

import '../pipe_source_parameters_activemq_broker_parameters_credentials/pipe_source_parameters_activemq_broker_parameters_credentials.dart';

class PipeSourceParametersActivemqBrokerParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;

  /// The credentials needed to access the resource. Detailed below.
  final PipeSourceParametersActivemqBrokerParametersCredentials credentials;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;

  /// The name of the destination queue to consume. Maximum length of 1000.
  final String queueName;

  PipeSourceParametersActivemqBrokerParameters({
    this.batchSize,
    required this.credentials,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    map['credentials'] = credentials.toMap();
    final maximumBatchingWindowInSecondsValue = maximumBatchingWindowInSeconds;
    if (maximumBatchingWindowInSecondsValue != null) {
      map['maximumBatchingWindowInSeconds'] =
          maximumBatchingWindowInSecondsValue;
    }
    map['queueName'] = queueName;
    return map;
  }

  factory PipeSourceParametersActivemqBrokerParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersActivemqBrokerParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      credentials:
          PipeSourceParametersActivemqBrokerParametersCredentials.fromMap(
              (map['credentials'] as Map).cast<String, dynamic>()),
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
              ? null
              : map['maximumBatchingWindowInSeconds'] as int,
      queueName: map['queueName'] as String,
    );
  }
}
