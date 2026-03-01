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
  NotificationConfigurationState({
    pulumi.Output<String>? aggregationDuration,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      aggregationDuration = pulumi.Input.asOptionalInput<String>(aggregationDuration),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      aggregationDuration: map['aggregationDuration'] == null ? null : pulumi.Output.create<String>(map['aggregationDuration'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

