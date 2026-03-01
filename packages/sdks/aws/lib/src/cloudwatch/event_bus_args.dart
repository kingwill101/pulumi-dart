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
    pulumi.Output<EventBusDeadLetterConfig>? deadLetterConfig,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventSourceName,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<EventBusLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deadLetterConfig = pulumi.Input.asOptionalInput<EventBusDeadLetterConfig>(deadLetterConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventSourceName = pulumi.Input.asOptionalInput<String>(eventSourceName),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      logConfig = pulumi.Input.asOptionalInput<EventBusLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      deadLetterConfig: map['deadLetterConfig'] == null ? null : pulumi.Output.create<EventBusDeadLetterConfig>(EventBusDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventSourceName: map['eventSourceName'] == null ? null : pulumi.Output.create<String>(map['eventSourceName'] as String),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<EventBusLogConfig>(EventBusLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

