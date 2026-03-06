// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotificationConfiguration resources.
class NotificationConfigurationState {
  /// Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// aggregate notifications for 12 hours), `SHORT` (aggregate notifications for 5 minutes), `NONE` (don't aggregate
  /// notifications). Default: `NONE`.
  final pulumi.Input<String>? aggregationDuration;
  /// Amazon Resource Name (ARN) of the NotificationConfiguration.
  final pulumi.Input<String>? arn;
  /// Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// maximum length of 256.
  final pulumi.Input<String>? description;
  /// Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// constraints: Minimum length of 1, maximum length of 64. Pattern: `[A-Za-z0-9_\-]+`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  /// configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those
  /// defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags`
  /// configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [NotificationConfigurationState].
  /// [aggregationDuration] Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// [arn] Amazon Resource Name (ARN) of the NotificationConfiguration.
  /// [description] Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// [name] Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// [tags] Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags`
  const NotificationConfigurationState({
    this.aggregationDuration,
    this.arn,
    this.description,
    this.name,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationDuration': ?aggregationDuration,
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory NotificationConfigurationState.fromMap(Map<String, dynamic> map) {
    return NotificationConfigurationState(
      aggregationDuration: (() { final guardedValue = map['aggregationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

