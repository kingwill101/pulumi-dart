// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_bus_dead_letter_config/event_bus_dead_letter_config.dart';
import '../event_bus_log_config/event_bus_log_config.dart';

/// The set of arguments for EventBus.
class EventBusArgs {
  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block supports the following arguments:
  final Input<EventBusDeadLetterConfig>? deadLetterConfig;

  /// Event bus description.
  final Input<String>? description;

  /// Partner event source that the new event bus will be matched with. Must match `name`.
  final Input<String>? eventSourceName;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final Input<String>? kmsKeyIdentifier;

  /// Block for logging configuration settings for the event bus.
  final Input<EventBusLogConfig>? logConfig;

  /// Name of the new event bus. The names of custom event buses can't contain the / character. To create a partner event bus, ensure that the `name` matches the `event_source_name`.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final deadLetterConfigValue = deadLetterConfig;
    if (deadLetterConfigValue != null) {
      map['deadLetterConfig'] = Input.mapOptionalInputValue<
              EventBusDeadLetterConfig, Map<String, dynamic>>(
          deadLetterConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventSourceNameValue = eventSourceName;
    if (eventSourceNameValue != null) {
      map['eventSourceName'] = eventSourceNameValue;
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] =
          Input.mapOptionalInputValue<EventBusLogConfig, Map<String, dynamic>>(
              logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EventBusArgs.fromMap(Map<String, dynamic> map) {
    return EventBusArgs(
      deadLetterConfig: Input.asOptionalInput<EventBusDeadLetterConfig>(
          map['deadLetterConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      eventSourceName: Input.asOptionalInput<String>(map['eventSourceName']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      logConfig: Input.asOptionalInput<EventBusLogConfig>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
