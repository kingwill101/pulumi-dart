import 'package:pulumi/pulumi.dart' as pulumi;
import '../snapshot_import_client_data/snapshot_import_client_data.dart';
import '../snapshot_import_disk_container/snapshot_import_disk_container.dart';
import 'snapshot_import_args.dart';

/// Imports a disk image from S3 as a Snapshot.
class SnapshotImport extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final pulumi.Output<String> arn;

  /// The client-specific data. Detailed below.
  late final pulumi.Output<SnapshotImportClientData?> clientData;

  /// The data encryption key identifier for the snapshot.
  late final pulumi.Output<String> dataEncryptionKeyId;

  /// The description string for the import snapshot task.
  late final pulumi.Output<String> description;

  /// Information about the disk container. Detailed below.
  late final pulumi.Output<SnapshotImportDiskContainer> diskContainer;

  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  late final pulumi.Output<bool?> encrypted;

  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  late final pulumi.Output<String?> kmsKeyId;
  late final pulumi.Output<String> outpostArn;

  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  late final pulumi.Output<String> ownerAlias;

  /// The AWS account ID of the EBS snapshot owner.
  late final pulumi.Output<String> ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  late final pulumi.Output<bool?> permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: `vmimport`
  late final pulumi.Output<String?> roleName;

  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  late final pulumi.Output<String> storageTier;

  /// A map of tags to assign to the snapshot.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final pulumi.Output<int?> temporaryRestoreDays;
  late final pulumi.Output<String> volumeId;

  /// The size of the drive in GiBs.
  late final pulumi.Output<int> volumeSize;

  SnapshotImport(
    String name, {
    SnapshotImportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotImport:SnapshotImport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clientData = registerOutput<SnapshotImportClientData?>('clientData');
    this.dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    this.description = registerOutput<String>('description');
    this.diskContainer =
        registerOutput<SnapshotImportDiskContainer>('diskContainer');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.ownerAlias = registerOutput<String>('ownerAlias');
    this.ownerId = registerOutput<String>('ownerId');
    this.permanentRestore = registerOutput<bool?>('permanentRestore');
    this.region = registerOutput<String>('region');
    this.roleName = registerOutput<String?>('roleName');
    this.storageTier = registerOutput<String>('storageTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSize = registerOutput<int>('volumeSize');
  }
}
