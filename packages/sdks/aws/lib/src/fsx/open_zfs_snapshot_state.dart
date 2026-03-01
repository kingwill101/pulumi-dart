// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OpenZfsSnapshot resources.
class OpenZfsSnapshotState {
  /// Amazon Resource Name of the snapshot.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? creationTime;
  /// The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the volume to snapshot. This can be the root volume or a child volume.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [OpenZfsSnapshotState].
  /// [arn] Amazon Resource Name of the snapshot.
  /// [creationTime] Optional.
  /// [name] The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [volumeId] The ID of the volume to snapshot. This can be the root volume or a child volume.
  OpenZfsSnapshotState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? volumeId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'volumeId': ?volumeId,
    };
  }

  factory OpenZfsSnapshotState.fromMap(Map<String, dynamic> map) {
    return OpenZfsSnapshotState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

