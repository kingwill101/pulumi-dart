// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EventArchive.
class EventArchiveArgs {
  /// Description for the archive.
  final Input<String>? description;

  /// Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the <span pulumi-lang-nodejs="`eventSourceArn`" pulumi-lang-dotnet="`EventSourceArn`" pulumi-lang-go="`eventSourceArn`" pulumi-lang-python="`event_source_arn`" pulumi-lang-yaml="`eventSourceArn`" pulumi-lang-java="`eventSourceArn`">`event_source_arn`</span>.
  final Input<String>? eventPattern;

  /// ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  final Input<String> eventSourceArn;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final Input<String>? kmsKeyIdentifier;

  /// Name of the archive. The archive name cannot exceed 48 characters.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  final Input<int>? retentionDays;

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
      description: Input.asOptionalInput<String>(map['description']),
      eventPattern: Input.asOptionalInput<String>(map['eventPattern']),
      eventSourceArn: Input.asInput<String>(map['eventSourceArn']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionDays: Input.asOptionalInput<int>(map['retentionDays']),
    );
  }
}
