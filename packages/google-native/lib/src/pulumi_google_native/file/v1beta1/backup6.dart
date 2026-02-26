import 'package:pulumi/pulumi.dart';
import 'backup_args6.dart';

/// Creates a backup.
/// Auto-naming is currently not supported for this resource.
class Backup6 extends CustomResource {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final Output<String> backupId;

  /// Capacity of the source file share when the backup was created.
  late final Output<String> capacityGb;

  /// The time when the backup was created.
  late final Output<String> createTime;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String> description;

  /// Amount of bytes that will be downloaded if the backup is restored
  late final Output<String> downloadBytes;

  /// Immutable. KMS key name used for data encryption.
  late final Output<String> kmsKeyName;

  /// Resource labels to represent user provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// Name of the file share in the source Filestore instance that the backup is created from.
  late final Output<String> sourceFileShare;

  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  late final Output<String> sourceInstance;

  /// The service tier of the source Filestore instance that this backup is created from.
  late final Output<String> sourceInstanceTier;

  /// The backup state.
  late final Output<String> state;

  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  late final Output<String> storageBytes;

  Backup6(
    String name, {
    BackupArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = Output.createUnknown<String>();
    this.capacityGb = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.downloadBytes = Output.createUnknown<String>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.sourceFileShare = Output.createUnknown<String>();
    this.sourceInstance = Output.createUnknown<String>();
    this.sourceInstanceTier = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.storageBytes = Output.createUnknown<String>();
  }
}
