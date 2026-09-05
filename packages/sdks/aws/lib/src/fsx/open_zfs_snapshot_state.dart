// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OpenZfsSnapshot resources.
class OpenZfsSnapshotState {
  /// ARN of the snapshot.
  final pulumi.Input<String?>? arn;
  /// Time that the snapshot was created.
  final pulumi.Input<String?>? creationTime;
  /// Name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// ID of the volume to snapshot. This can be the root volume or a child volume.
  final pulumi.Input<String?>? volumeId;

  /// Creates a new [OpenZfsSnapshotState].
  /// [arn] ARN of the snapshot.
  /// [creationTime] Time that the snapshot was created.
  /// [name] Name of the Snapshot. You can use a maximum of 203 alphanumeric characters plus either _ or -  or : or . for the name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copyTagsToBackups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [volumeId] ID of the volume to snapshot. This can be the root volume or a child volume.
  const OpenZfsSnapshotState({
    this.arn,
    this.creationTime,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.volumeId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
