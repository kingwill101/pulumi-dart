// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventArchive resources.
class EventArchiveState {
  /// ARN of the archive.
  final pulumi.Input<String>? arn;
  /// Description for the archive.
  final pulumi.Input<String>? description;
  /// Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `event_source_arn`.
  final pulumi.Input<String>? eventPattern;
  /// ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  final pulumi.Input<String>? eventSourceArn;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// Name of the archive. The archive name cannot exceed 48 characters.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [EventArchiveState].
  /// [arn] ARN of the archive.
  /// [description] Description for the archive.
  /// [eventPattern] Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `event_source_arn`.
  /// [eventSourceArn] ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  /// [kmsKeyIdentifier] Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  /// [name] Name of the archive. The archive name cannot exceed 48 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionDays] The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  EventArchiveState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventPattern,
    pulumi.Output<String>? eventSourceArn,
    pulumi.Output<String>? kmsKeyIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<int>? retentionDays,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventPattern = pulumi.Input.asOptionalInput<String>(eventPattern),
      eventSourceArn = pulumi.Input.asOptionalInput<String>(eventSourceArn),
      kmsKeyIdentifier = pulumi.Input.asOptionalInput<String>(kmsKeyIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'eventPattern': ?eventPattern,
      'eventSourceArn': ?eventSourceArn,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'region': ?region,
      'retentionDays': ?retentionDays,
    };
  }

  factory EventArchiveState.fromMap(Map<String, dynamic> map) {
    return EventArchiveState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventPattern: map['eventPattern'] == null ? null : pulumi.Output.create<String>(map['eventPattern'] as String),
      eventSourceArn: map['eventSourceArn'] == null ? null : pulumi.Output.create<String>(map['eventSourceArn'] as String),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : pulumi.Output.create<String>(map['kmsKeyIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
    );
  }
}

