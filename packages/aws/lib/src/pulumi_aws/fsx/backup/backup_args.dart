// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Backup.
class BackupArgs {
  /// The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  final Input<String>? fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the file system. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set <span pulumi-lang-nodejs="`copyTagsToBackups`" pulumi-lang-dotnet="`CopyTagsToBackups`" pulumi-lang-go="`copyTagsToBackups`" pulumi-lang-python="`copy_tags_to_backups`" pulumi-lang-yaml="`copyTagsToBackups`" pulumi-lang-java="`copyTagsToBackups`">`copy_tags_to_backups`</span> to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final Input<Map<String, String>>? tags;

  /// The ID of the volume to back up. Required if backing up a ONTAP Volume.
  ///
  /// Note - One of <span pulumi-lang-nodejs="`fileSystemId`" pulumi-lang-dotnet="`FileSystemId`" pulumi-lang-go="`fileSystemId`" pulumi-lang-python="`file_system_id`" pulumi-lang-yaml="`fileSystemId`" pulumi-lang-java="`fileSystemId`">`file_system_id`</span> or <span pulumi-lang-nodejs="`volumeId`" pulumi-lang-dotnet="`VolumeId`" pulumi-lang-go="`volumeId`" pulumi-lang-python="`volume_id`" pulumi-lang-yaml="`volumeId`" pulumi-lang-java="`volumeId`">`volume_id`</span> can be specified. <span pulumi-lang-nodejs="`fileSystemId`" pulumi-lang-dotnet="`FileSystemId`" pulumi-lang-go="`fileSystemId`" pulumi-lang-python="`file_system_id`" pulumi-lang-yaml="`fileSystemId`" pulumi-lang-java="`fileSystemId`">`file_system_id`</span> is used for Lustre and Windows, <span pulumi-lang-nodejs="`volumeId`" pulumi-lang-dotnet="`VolumeId`" pulumi-lang-go="`volumeId`" pulumi-lang-python="`volume_id`" pulumi-lang-yaml="`volumeId`" pulumi-lang-java="`volumeId`">`volume_id`</span> is used for ONTAP.
  final Input<String>? volumeId;

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
      fileSystemId: Input.asOptionalInput<String>(map['fileSystemId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      volumeId: Input.asOptionalInput<String>(map['volumeId']),
    );
  }
}
