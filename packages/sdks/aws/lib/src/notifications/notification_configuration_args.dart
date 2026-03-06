// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_notification_configuration_notification_configuration_args_doc}
/// The set of arguments for NotificationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_notifications_notification_configuration_notification_configuration_args_doc}
class NotificationConfigurationArgs {
  /// Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// aggregate notifications for 12 hours), `SHORT` (aggregate notifications for 5 minutes), `NONE` (don't aggregate
  /// notifications). Default: `NONE`.
  final pulumi.Input<String>? aggregationDuration;
  /// Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// maximum length of 256.
  final pulumi.Input<String> description;
  /// Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// constraints: Minimum length of 1, maximum length of 64. Pattern: `[A-Za-z0-9_\-]+`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  /// configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those
  /// defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NotificationConfigurationArgs].
  /// [aggregationDuration] Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// [description] Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// [name] Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// [tags] Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  const NotificationConfigurationArgs({
    this.aggregationDuration,
    required this.description,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationDuration': ?aggregationDuration,
      'description': description,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory NotificationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigurationArgs(
      aggregationDuration: (() { final guardedValue = map['aggregationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

