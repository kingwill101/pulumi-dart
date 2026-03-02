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
    this.arn,
    this.clientData,
    this.dataEncryptionKeyId,
    this.description,
    this.diskContainer,
    this.encrypted,
    this.kmsKeyId,
    this.outpostArn,
    this.ownerAlias,
    this.ownerId,
    this.permanentRestore,
    this.region,
    this.roleName,
    this.storageTier,
    this.tags,
    this.tagsAll,
    this.temporaryRestoreDays,
    this.volumeId,
    this.volumeSize,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      clientData: map['clientData'] == null ? null : (SnapshotImportClientData.fromMap((map['clientData'] as Map).cast<String, dynamic>())).input(),
      dataEncryptionKeyId: map['dataEncryptionKeyId'] == null ? null : (map['dataEncryptionKeyId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      diskContainer: map['diskContainer'] == null ? null : (SnapshotImportDiskContainer.fromMap((map['diskContainer'] as Map).cast<String, dynamic>())).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn'] as String).input(),
      ownerAlias: map['ownerAlias'] == null ? null : (map['ownerAlias'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      permanentRestore: map['permanentRestore'] == null ? null : (map['permanentRestore'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
      storageTier: map['storageTier'] == null ? null : (map['storageTier'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null ? null : (map['temporaryRestoreDays'] as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId'] as String).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize'] as int).input(),
    );
  }
}

