// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Backup.
class BackupArgs {
  /// The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  final pulumi.Input<String>? fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the volume to back up. Required if backing up a ONTAP Volume.
  ///
  /// Note - One of `file_system_id` or `volume_id` can be specified. `file_system_id` is used for Lustre and Windows, `volume_id` is used for ONTAP.
  final pulumi.Input<String>? volumeId;

  BackupArgs({
    this.fileSystemId,
    this.region,
    this.tags,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileSystemIdValue = fileSystemId;
    if (fileSystemIdValue != null) {
      map['fileSystemId'] = fileSystemIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final volumeIdValue = volumeId;
    if (volumeIdValue != null) {
      map['volumeId'] = volumeIdValue;
    }
    return map;
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      fileSystemId: pulumi.Input.asOptionalInput<String>(map['fileSystemId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      volumeId: pulumi.Input.asOptionalInput<String>(map['volumeId']),
    );
  }
}
