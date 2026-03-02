// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotSchedule resources.
class SnapshotScheduleState {
  /// Amazon Resource Name (ARN) of the Redshift Snapshot Schedule.
  final pulumi.Input<String>? arn;
  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  final pulumi.Input<List<String>>? definitions;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SnapshotScheduleState].
  /// [arn] Amazon Resource Name (ARN) of the Redshift Snapshot Schedule.
  /// [definitions] The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  /// [description] The description of the snapshot schedule.
  /// [forceDestroy] Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  /// [identifier] The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SnapshotScheduleState({
    this.arn,
    this.definitions,
    this.description,
    this.forceDestroy,
    this.identifier,
    this.identifierPrefix,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'definitions': ?definitions,
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SnapshotScheduleState.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      definitions: map['definitions'] == null ? null : (((map['definitions'] as List).cast<String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      identifier: map['identifier'] == null ? null : ((map['identifier'] as String).input()).input(),
      identifierPrefix: map['identifierPrefix'] == null ? null : ((map['identifierPrefix'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

