// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_rabbitmq_broker_parameters_credentials.dart';

class PipeSourceParametersRabbitmqBrokerParameters {
  /// Maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int?>? batchSize;
  /// Credentials needed to access the resource. See `source_parameters.rabbitmq_broker_parameters.credentials` Block for details.
  final pulumi.Input<PipeSourceParametersRabbitmqBrokerParametersCredentials> credentials;
  /// Maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;
  /// Name of the destination queue to consume. Maximum length of 1000.
  final pulumi.Input<String> queueName;
  /// Name of the virtual host associated with the source broker. Maximum length of 200.
  final pulumi.Input<String?>? virtualHost;

  /// Creates a new [PipeSourceParametersRabbitmqBrokerParameters].
  /// [batchSize] Maximum number of records to include in each batch. Maximum value of 10000.
  /// [credentials] Credentials needed to access the resource. See `source_parameters.rabbitmq_broker_parameters.credentials` Block for details.
  /// [maximumBatchingWindowInSeconds] Maximum length of a time to wait for events. Maximum value of 300.
  /// [queueName] Name of the destination queue to consume. Maximum length of 1000.
  /// [virtualHost] Name of the virtual host associated with the source broker. Maximum length of 200.
  const PipeSourceParametersRabbitmqBrokerParameters({
    this.batchSize,
    required this.credentials,
    this.maximumBatchingWindowInSeconds,
    required this.queueName,
    this.virtualHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'credentials': pulumi.Input.mapInputValue<PipeSourceParametersRabbitmqBrokerParametersCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'queueName': queueName,
      'virtualHost': ?virtualHost,
    };
  }

  factory PipeSourceParametersRabbitmqBrokerParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersRabbitmqBrokerParameters(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      credentials: pulumi.Input.fromValue(PipeSourceParametersRabbitmqBrokerParametersCredentials.fromMap((map['credentials']! as Map).cast<String, dynamic>())),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      virtualHost: (() { final guardedValue = map['virtualHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
