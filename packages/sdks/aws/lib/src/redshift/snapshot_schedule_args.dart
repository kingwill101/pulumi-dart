// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_snapshot_schedule_snapshot_schedule_args_doc}
/// The set of arguments for SnapshotSchedule.
/// {@endtemplate}
/// {@macro pulumi_redshift_snapshot_schedule_snapshot_schedule_args_doc}
class SnapshotScheduleArgs {
  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  final pulumi.Input<List<String>> definitions;
  /// The description of the snapshot schedule.
  final pulumi.Input<String>? description;
  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  final pulumi.Input<bool>? forceDestroy;
  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SnapshotScheduleArgs].
  /// [definitions] The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  /// [description] The description of the snapshot schedule.
  /// [forceDestroy] Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  /// [identifier] The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SnapshotScheduleArgs({
    required pulumi.Output<List<String>> definitions,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      definitions = pulumi.Input.asInput<List<String>>(definitions),
      description = pulumi.Input.asOptionalInput<String>(description),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SnapshotScheduleArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleArgs(
      definitions: pulumi.Output.create<List<String>>((map['definitions'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

