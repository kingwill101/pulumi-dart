// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fsx_open_zfs_snapshot_open_zfs_snapshot_args_doc}
/// The set of arguments for OpenZfsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_fsx_open_zfs_snapshot_open_zfs_snapshot_args_doc}
class OpenZfsSnapshotArgs {
  /// Name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the volume to snapshot. This can be the root volume or a child volume.
  final pulumi.Input<String> volumeId;

  /// Creates a new [OpenZfsSnapshotArgs].
  /// [name] Name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [volumeId] ID of the volume to snapshot. This can be the root volume or a child volume.
  const OpenZfsSnapshotArgs({
    this.name,
    this.region,
    this.tags,
    required this.volumeId,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
