// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NotificationConfiguration.
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

  NotificationConfigurationArgs({
    this.aggregationDuration,
    required this.description,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationDurationValue = aggregationDuration;
    if (aggregationDurationValue != null) {
      map['aggregationDuration'] = aggregationDurationValue;
    }
    map['description'] = description;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NotificationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigurationArgs(
      aggregationDuration:
          pulumi.Input.asOptionalInput<String>(map['aggregationDuration']),
      description: pulumi.Input.asInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
