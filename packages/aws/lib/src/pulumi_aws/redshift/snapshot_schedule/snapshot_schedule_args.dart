// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotSchedule.
class SnapshotScheduleArgs {
  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  final Input<List<String>> definitions;

  /// The description of the snapshot schedule.
  final Input<String>? description;

  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  final Input<bool>? forceDestroy;

  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  final Input<String>? identifier;

  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with `identifier`.
  final Input<String>? identifierPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  SnapshotScheduleArgs({
    required this.definitions,
    this.description,
    this.forceDestroy,
    this.identifier,
    this.identifierPrefix,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definitions'] = definitions;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final identifierValue = identifier;
    if (identifierValue != null) {
      map['identifier'] = identifierValue;
    }
    final identifierPrefixValue = identifierPrefix;
    if (identifierPrefixValue != null) {
      map['identifierPrefix'] = identifierPrefixValue;
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

  factory SnapshotScheduleArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleArgs(
      definitions: Input.asInput<List<String>>(map['definitions']),
      description: Input.asOptionalInput<String>(map['description']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      identifier: Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix: Input.asOptionalInput<String>(map['identifierPrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
