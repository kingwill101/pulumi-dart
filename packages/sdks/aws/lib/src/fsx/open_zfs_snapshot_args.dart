// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fsx_open_zfs_snapshot_open_zfs_snapshot_args_doc}
/// The set of arguments for OpenZfsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_fsx_open_zfs_snapshot_open_zfs_snapshot_args_doc}
class OpenZfsSnapshotArgs {
  /// The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the volume to snapshot. This can be the root volume or a child volume.
  final pulumi.Input<String> volumeId;

  /// Creates a new [OpenZfsSnapshotArgs].
  /// [name] The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [volumeId] The ID of the volume to snapshot. This can be the root volume or a child volume.
  OpenZfsSnapshotArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> volumeId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'volumeId': volumeId,
    };
  }

  factory OpenZfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return OpenZfsSnapshotArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      volumeId: pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

