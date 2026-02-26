// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_event_bus_dead_letter_config/get_event_bus_dead_letter_config.dart';
import '../get_event_bus_log_config/get_event_bus_log_config.dart';

/// Result data returned by getEventBus.
class GetEventBusResult {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final String arn;

  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block has the following arguments:
  final List<GetEventBusDeadLetterConfig> deadLetterConfigs;

  /// Event bus description.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.
  final String kmsKeyIdentifier;

  /// Block for logging configuration settings for the event bus.
  final List<GetEventBusLogConfig> logConfigs;
  final String name;
  final String region;

  GetEventBusResult({
    required this.arn,
    required this.deadLetterConfigs,
    required this.description,
    required this.id,
    required this.kmsKeyIdentifier,
    required this.logConfigs,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['deadLetterConfigs'] =
        Input.encodeList<GetEventBusDeadLetterConfig, Map<String, dynamic>>(
            deadLetterConfigs, (value) => value.toMap());
    map['description'] = description;
    map['id'] = id;
    map['kmsKeyIdentifier'] = kmsKeyIdentifier;
    map['logConfigs'] =
        Input.encodeList<GetEventBusLogConfig, Map<String, dynamic>>(
            logConfigs, (value) => value.toMap());
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetEventBusResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusResult(
      arn: map['arn'] as String,
      deadLetterConfigs: Input.decodeList<GetEventBusDeadLetterConfig>(
          map['deadLetterConfigs'],
          (value) => GetEventBusDeadLetterConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyIdentifier: map['kmsKeyIdentifier'] as String,
      logConfigs: Input.decodeList<GetEventBusLogConfig>(
          map['logConfigs'],
          (value) => GetEventBusLogConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
