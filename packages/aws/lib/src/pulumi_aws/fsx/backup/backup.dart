import 'package:pulumi/pulumi.dart';
import 'backup_args.dart';

/// Provides a FSx Backup resource.
///
/// ## Lustre Example
///
///
///
/// ## Windows Example
///
///
///
/// ## ONTAP Example
///
///
///
/// ## OpenZFS Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Backups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/backup:Backup example fs-543ab12b1ca672f33
/// ```
class Backup extends CustomResource {
  /// Amazon Resource Name of the backup.
  late final Output<String> arn;

  /// The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  late final Output<String?> fileSystemId;

  /// The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest.
  late final Output<String> kmsKeyId;

  /// AWS account identifier that created the file system.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the file system backup.
  late final Output<String> type;

  /// The ID of the volume to back up. Required if backing up a ONTAP Volume.
  ///
  /// Note - One of `file_system_id` or `volume_id` can be specified. `file_system_id` is used for Lustre and Windows, `volume_id` is used for ONTAP.
  late final Output<String?> volumeId;

  Backup(
    String name, {
    BackupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/backup:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fileSystemId = registerOutput<String?>('fileSystemId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.volumeId = registerOutput<String?>('volumeId');
  }
}
