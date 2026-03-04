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
    this.arn,
    this.description,
    this.eventPattern,
    this.eventSourceArn,
    this.kmsKeyIdentifier,
    this.name,
    this.region,
    this.retentionDays,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventPattern: (() {
        final guardedValue = map['eventPattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSourceArn: (() {
        final guardedValue = map['eventSourceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyIdentifier: (() {
        final guardedValue = map['kmsKeyIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionDays: (() {
        final guardedValue = map['retentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
