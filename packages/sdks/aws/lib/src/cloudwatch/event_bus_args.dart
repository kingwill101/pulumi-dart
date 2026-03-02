// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bus_dead_letter_config.dart';
import 'event_bus_log_config.dart';

/// {@template pulumi_cloudwatch_event_bus_event_bus_args_doc}
/// The set of arguments for EventBus.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_bus_event_bus_args_doc}
class EventBusArgs {
  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block supports the following arguments:
  final pulumi.Input<EventBusDeadLetterConfig>? deadLetterConfig;
  /// Event bus description.
  final pulumi.Input<String>? description;
  /// Partner event source that the new event bus will be matched with. Must match `name`.
  final pulumi.Input<String>? eventSourceName;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// Block for logging configuration settings for the event bus.
  final pulumi.Input<EventBusLogConfig>? logConfig;
  /// Name of the new event bus. The names of custom event buses can't contain the / character. To create a partner event bus, ensure that the `name` matches the `event_source_name`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventBusArgs].
  /// [deadLetterConfig] Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block supports the following arguments:
  /// [description] Event bus description.
  /// [eventSourceName] Partner event source that the new event bus will be matched with. Must match `name`.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  /// [logConfig] Block for logging configuration settings for the event bus.
  /// [name] Name of the new event bus. The names of custom event buses can't contain the / character. To create a partner event bus, ensure that the `name` matches the `event_source_name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EventBusArgs({
    this.deadLetterConfig,
    this.description,
    this.eventSourceName,
    this.kmsKeyIdentifier,
    this.logConfig,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<EventBusDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'description': ?description,
      'eventSourceName': ?eventSourceName,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<EventBusLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EventBusArgs.fromMap(Map<String, dynamic> map) {
    return EventBusArgs(
      deadLetterConfig: map['deadLetterConfig'] == null ? null : ((EventBusDeadLetterConfig.fromMap((map['deadLetterConfig']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      eventSourceName: map['eventSourceName'] == null ? null : ((map['eventSourceName'] as String).input()).input(),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : ((map['kmsKeyIdentifier'] as String).input()).input(),
      logConfig: map['logConfig'] == null ? null : ((EventBusLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

