// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_bus_dead_letter_config.dart';
import 'get_event_bus_log_config.dart';

/// Result data returned by getEventBus.
class GetEventBusResult {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final String? arn;
  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block has the following arguments:
  final List<GetEventBusDeadLetterConfig>? deadLetterConfigs;
  /// Event bus description.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.
  final String? kmsKeyIdentifier;
  /// Block for logging configuration settings for the event bus.
  final List<GetEventBusLogConfig>? logConfigs;
  final String? name;
  final String? region;

  /// Creates a new [GetEventBusResult].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  /// [deadLetterConfigs] Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block has the following arguments:
  /// [description] Event bus description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt events on this event bus, if one has been specified.
  /// [logConfigs] Block for logging configuration settings for the event bus.
  /// [name] Optional.
  /// [region] Optional.
  const GetEventBusResult({
    this.arn,
    this.deadLetterConfigs,
    this.description,
    this.id,
    this.kmsKeyIdentifier,
    this.logConfigs,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deadLetterConfigs': ?(() { final guardedValue = deadLetterConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEventBusDeadLetterConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'logConfigs': ?(() { final guardedValue = logConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEventBusLogConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetEventBusResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deadLetterConfigs: (() { final guardedValue = map['deadLetterConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEventBusDeadLetterConfig>(guardedValue, (value) => GetEventBusDeadLetterConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEventBusLogConfig>(guardedValue, (value) => GetEventBusLogConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
