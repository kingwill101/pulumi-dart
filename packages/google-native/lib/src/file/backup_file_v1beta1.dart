import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_file_v1beta1_args.dart';

/// Creates a backup.
/// Auto-naming is currently not supported for this resource.
class BackupFileV1beta1 extends pulumi.CustomResource {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final pulumi.Output<String> backupId;
  /// Capacity of the source file share when the backup was created.
  late final pulumi.Output<String> capacityGb;
  /// The time when the backup was created.
  late final pulumi.Output<String> createTime;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String> description;
  /// Amount of bytes that will be downloaded if the backup is restored
  late final pulumi.Output<String> downloadBytes;
  /// Immutable. KMS key name used for data encryption.
  late final pulumi.Output<String> kmsKeyName;
  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  late final pulumi.Output<String> sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  late final pulumi.Output<String> sourceInstance;
  /// The service tier of the source Filestore instance that this backup is created from.
  late final pulumi.Output<String> sourceInstanceTier;
  /// The backup state.
  late final pulumi.Output<String> state;
  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  late final pulumi.Output<String> storageBytes;

  /// Creates a new [BackupFileV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupFileV1beta1]. {@macro pulumi_file_v1beta1_backup_file_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupFileV1beta1(
    String name, {
    BackupFileV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.capacityGb = registerOutput<String>('capacityGb');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.downloadBytes = registerOutput<String>('downloadBytes');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.sourceFileShare = registerOutput<String>('sourceFileShare');
    this.sourceInstance = registerOutput<String>('sourceInstance');
    this.sourceInstanceTier = registerOutput<String>('sourceInstanceTier');
    this.state = registerOutput<String>('state');
    this.storageBytes = registerOutput<String>('storageBytes');
  }
}
