// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_import_client_data.dart';
import 'snapshot_import_disk_container.dart';

/// Input properties used for looking up and filtering SnapshotImport resources.
class SnapshotImportState {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  final pulumi.Input<String>? arn;
  /// The client-specific data. Detailed below.
  final pulumi.Input<SnapshotImportClientData>? clientData;
  /// The data encryption key identifier for the snapshot.
  final pulumi.Input<String>? dataEncryptionKeyId;
  /// The description string for the import snapshot task.
  final pulumi.Input<String>? description;
  /// Information about the disk container. Detailed below.
  final pulumi.Input<SnapshotImportDiskContainer>? diskContainer;
  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  final pulumi.Input<bool>? encrypted;
  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  final pulumi.Input<String>? ownerAlias;
  /// The AWS account ID of the EBS snapshot owner.
  final pulumi.Input<String>? ownerId;
  /// Indicates whether to permanently restore an archived snapshot.
  final pulumi.Input<bool>? permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: `vmimport`
  final pulumi.Input<String>? roleName;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  final pulumi.Input<String>? storageTier;
  /// A map of tags to assign to the snapshot.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;
  final pulumi.Input<String>? volumeId;
  /// The size of the drive in GiBs.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [SnapshotImportState].
  /// [arn] Amazon Resource Name (ARN) of the EBS Snapshot.
  /// [clientData] The client-specific data. Detailed below.
  /// [dataEncryptionKeyId] The data encryption key identifier for the snapshot.
  /// [description] The description string for the import snapshot task.
  /// [diskContainer] Information about the disk container. Detailed below.
  /// [encrypted] Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  /// [kmsKeyId] An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  /// [outpostArn] Optional.
  /// [ownerAlias] Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  /// [ownerId] The AWS account ID of the EBS snapshot owner.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleName] The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: `vmimport`
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags to assign to the snapshot.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  /// [volumeId] Optional.
  /// [volumeSize] The size of the drive in GiBs.
  SnapshotImportState({
    pulumi.Output<String>? arn,
    pulumi.Output<SnapshotImportClientData>? clientData,
    pulumi.Output<String>? dataEncryptionKeyId,
    pulumi.Output<String>? description,
    pulumi.Output<SnapshotImportDiskContainer>? diskContainer,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerAlias,
    pulumi.Output<String>? ownerId,
    pulumi.Output<bool>? permanentRestore,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? storageTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? temporaryRestoreDays,
    pulumi.Output<String>? volumeId,
    pulumi.Output<int>? volumeSize,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clientData = pulumi.Input.asOptionalInput<SnapshotImportClientData>(clientData),
      dataEncryptionKeyId = pulumi.Input.asOptionalInput<String>(dataEncryptionKeyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskContainer = pulumi.Input.asOptionalInput<SnapshotImportDiskContainer>(diskContainer),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerAlias = pulumi.Input.asOptionalInput<String>(ownerAlias),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      permanentRestore = pulumi.Input.asOptionalInput<bool>(permanentRestore),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      temporaryRestoreDays = pulumi.Input.asOptionalInput<int>(temporaryRestoreDays),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId),
      volumeSize = pulumi.Input.asOptionalInput<int>(volumeSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clientData': ?pulumi.Input.mapOptionalInputValue<SnapshotImportClientData, Map<String, dynamic>>(clientData, (value) => value.toMap()),
      'dataEncryptionKeyId': ?dataEncryptionKeyId,
      'description': ?description,
      'diskContainer': ?pulumi.Input.mapOptionalInputValue<SnapshotImportDiskContainer, Map<String, dynamic>>(diskContainer, (value) => value.toMap()),
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'outpostArn': ?outpostArn,
      'ownerAlias': ?ownerAlias,
      'ownerId': ?ownerId,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'roleName': ?roleName,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'temporaryRestoreDays': ?temporaryRestoreDays,
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory SnapshotImportState.fromMap(Map<String, dynamic> map) {
    return SnapshotImportState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clientData: map['clientData'] == null ? null : pulumi.Output.create<SnapshotImportClientData>(SnapshotImportClientData.fromMap((map['clientData'] as Map).cast<String, dynamic>())),
      dataEncryptionKeyId: map['dataEncryptionKeyId'] == null ? null : pulumi.Output.create<String>(map['dataEncryptionKeyId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskContainer: map['diskContainer'] == null ? null : pulumi.Output.create<SnapshotImportDiskContainer>(SnapshotImportDiskContainer.fromMap((map['diskContainer'] as Map).cast<String, dynamic>())),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerAlias: map['ownerAlias'] == null ? null : pulumi.Output.create<String>(map['ownerAlias'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      permanentRestore: map['permanentRestore'] == null ? null : pulumi.Output.create<bool>(map['permanentRestore'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      storageTier: map['storageTier'] == null ? null : pulumi.Output.create<String>(map['storageTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null ? null : pulumi.Output.create<int>(map['temporaryRestoreDays'] as int),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
      volumeSize: map['volumeSize'] == null ? null : pulumi.Output.create<int>(map['volumeSize'] as int),
    );
  }
}

