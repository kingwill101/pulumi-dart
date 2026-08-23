// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_bus_dead_letter_config.dart';
import 'get_event_bus_log_config.dart';

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

  /// Creates a new [GetEventBusResult].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  /// [deadLetterConfigs] Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block has the following arguments:
  /// [description] Event bus description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.
  /// [logConfigs] Block for logging configuration settings for the event bus.
  /// [name] Required.
  /// [region] Required.
  const GetEventBusResult({
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
    return <String, dynamic>{
      'arn': arn,
      'deadLetterConfigs': pulumi.Input.encodeList<GetEventBusDeadLetterConfig, Map<String, dynamic>>(deadLetterConfigs, (value) => value.toMap()),
      'description': description,
      'id': id,
      'kmsKeyIdentifier': kmsKeyIdentifier,
      'logConfigs': pulumi.Input.encodeList<GetEventBusLogConfig, Map<String, dynamic>>(logConfigs, (value) => value.toMap()),
      'name': name,
      'region': region,
    };
  }

  factory GetEventBusResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusResult(
      arn: map['arn'] as String,
      deadLetterConfigs: pulumi.Input.decodeList<GetEventBusDeadLetterConfig>(map['deadLetterConfigs']!, (value) => GetEventBusDeadLetterConfig.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyIdentifier: map['kmsKeyIdentifier'] as String,
      logConfigs: pulumi.Input.decodeList<GetEventBusLogConfig>(map['logConfigs']!, (value) => GetEventBusLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
