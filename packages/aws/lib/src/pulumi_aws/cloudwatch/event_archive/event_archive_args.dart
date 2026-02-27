// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventArchive.
class EventArchiveArgs {
  /// Description for the archive.
  final pulumi.Input<String>? description;

  /// Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `event_source_arn`.
  final pulumi.Input<String>? eventPattern;

  /// ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  final pulumi.Input<String> eventSourceArn;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final pulumi.Input<String>? kmsKeyIdentifier;

  /// Name of the archive. The archive name cannot exceed 48 characters.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  final pulumi.Input<int>? retentionDays;

  EventArchiveArgs({
    this.description,
    this.eventPattern,
    required this.eventSourceArn,
    this.kmsKeyIdentifier,
    this.name,
    this.region,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventPatternValue = eventPattern;
    if (eventPatternValue != null) {
      map['eventPattern'] = eventPatternValue;
    }
    map['eventSourceArn'] = eventSourceArn;
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory EventArchiveArgs.fromMap(Map<String, dynamic> map) {
    return EventArchiveArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      eventPattern: pulumi.Input.asOptionalInput<String>(map['eventPattern']),
      eventSourceArn: pulumi.Input.asInput<String>(map['eventSourceArn']),
      kmsKeyIdentifier:
          pulumi.Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionDays: pulumi.Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
