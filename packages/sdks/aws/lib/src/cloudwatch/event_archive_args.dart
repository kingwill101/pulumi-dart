// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_event_archive_event_archive_args_doc}
/// The set of arguments for EventArchive.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_archive_event_archive_args_doc}
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

  /// Creates a new [EventArchiveArgs].
  /// [description] Description for the archive.
  /// [eventPattern] Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `event_source_arn`.
  /// [eventSourceArn] ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  /// [name] Name of the archive. The archive name cannot exceed 48 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionDays] The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
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
    return <String, dynamic>{
      'description': ?description,
      'eventPattern': ?eventPattern,
      'eventSourceArn': eventSourceArn,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'region': ?region,
      'retentionDays': ?retentionDays,
    };
  }

  factory EventArchiveArgs.fromMap(Map<String, dynamic> map) {
    return EventArchiveArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      eventPattern: map['eventPattern'] == null ? null : ((map['eventPattern'] as String).input()).input(),
      eventSourceArn: (map['eventSourceArn'] as String).input(),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : ((map['kmsKeyIdentifier'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retentionDays: map['retentionDays'] == null ? null : ((map['retentionDays'] as int).input()).input(),
    );
  }
}

