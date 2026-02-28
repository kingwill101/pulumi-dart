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
    String? name,
    String? region,
    Map<String, String>? tags,
    required String volumeId,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['volumeId'] = volumeId;
    return map;
  }

  factory OpenZfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return OpenZfsSnapshotArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      volumeId: map['volumeId'] as String,
    );
  }
}
