// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Backup resources.
class BackupState {
  /// Amazon Resource Name of the backup.
  final pulumi.Input<String>? arn;

  /// The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  final pulumi.Input<String>? fileSystemId;

  /// The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest.
  final pulumi.Input<String>? kmsKeyId;

  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The type of the file system backup.
  final pulumi.Input<String>? type;

  /// The ID of the volume to back up. Required if backing up a ONTAP Volume.
  ///
  /// Note - One of `file_system_id` or `volume_id` can be specified. `file_system_id` is used for Lustre and Windows, `volume_id` is used for ONTAP.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [BackupState].
  /// [arn] Amazon Resource Name of the backup.
  /// [fileSystemId] The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  /// [kmsKeyId] The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest.
  /// [ownerId] AWS account identifier that created the file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the file system backup.
  /// [volumeId] The ID of the volume to back up. Required if backing up a ONTAP Volume.
  BackupState({
    this.arn,
    this.fileSystemId,
    this.kmsKeyId,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fileSystemId': ?fileSystemId,
      'kmsKeyId': ?kmsKeyId,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'volumeId': ?volumeId,
    };
  }

  factory BackupState.fromMap(Map<String, dynamic> map) {
    return BackupState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeId: (() {
        final guardedValue = map['volumeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
