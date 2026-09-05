// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fsx_backup_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_fsx_backup_backup_args_doc}
class BackupArgs {
  /// ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  final pulumi.Input<String?>? fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of the volume to back up. Required if backing up a ONTAP Volume.
  final pulumi.Input<String?>? volumeId;

  /// Creates a new [BackupArgs].
  /// [fileSystemId] ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [volumeId] ID of the volume to back up. Required if backing up a ONTAP Volume.
  const BackupArgs({
    this.fileSystemId,
    this.region,
    this.tags,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'region': ?region,
      'tags': ?tags,
      'volumeId': ?volumeId,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
