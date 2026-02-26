// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OpenZfsSnapshot.
class OpenZfsSnapshotArgs {
  /// The name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the file system. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set <span pulumi-lang-nodejs="`copyTagsToBackups`" pulumi-lang-dotnet="`CopyTagsToBackups`" pulumi-lang-go="`copyTagsToBackups`" pulumi-lang-python="`copy_tags_to_backups`" pulumi-lang-yaml="`copyTagsToBackups`" pulumi-lang-java="`copyTagsToBackups`">`copy_tags_to_backups`</span> to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final Input<Map<String, String>>? tags;

  /// The ID of the volume to snapshot. This can be the root volume or a child volume.
  final Input<String> volumeId;

  OpenZfsSnapshotArgs({
    this.name,
    this.region,
    this.tags,
    required this.volumeId,
  });

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
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      volumeId: Input.asInput<String>(map['volumeId']),
    );
  }
}
