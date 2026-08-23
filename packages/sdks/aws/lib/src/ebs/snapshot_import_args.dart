// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_import_client_data.dart';
import 'snapshot_import_disk_container.dart';

/// {@template pulumi_ebs_snapshot_import_snapshot_import_args_doc}
/// The set of arguments for SnapshotImport.
/// {@endtemplate}
/// {@macro pulumi_ebs_snapshot_import_snapshot_import_args_doc}
class SnapshotImportArgs {
  /// The client-specific data. Detailed below.
  final pulumi.Input<SnapshotImportClientData>? clientData;
  /// The description string for the import snapshot task.
  final pulumi.Input<String>? description;
  /// Information about the disk container. Detailed below.
  final pulumi.Input<SnapshotImportDiskContainer> diskContainer;
  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  final pulumi.Input<bool>? encrypted;
  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  final pulumi.Input<String>? kmsKeyId;
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
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final pulumi.Input<int>? temporaryRestoreDays;

  /// Creates a new [SnapshotImportArgs].
  /// [clientData] The client-specific data. Detailed below.
  /// [description] The description string for the import snapshot task.
  /// [diskContainer] Information about the disk container. Detailed below.
  /// [encrypted] Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  /// [kmsKeyId] An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  /// [permanentRestore] Indicates whether to permanently restore an archived snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleName] The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: `vmimport`
  /// [storageTier] The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  /// [tags] A map of tags to assign to the snapshot.
  /// [temporaryRestoreDays] Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  const SnapshotImportArgs({
    this.clientData,
    this.description,
    required this.diskContainer,
    this.encrypted,
    this.kmsKeyId,
    this.permanentRestore,
    this.region,
    this.roleName,
    this.storageTier,
    this.tags,
    this.temporaryRestoreDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?pulumi.Input.mapOptionalInputValue<SnapshotImportClientData, Map<String, dynamic>>(clientData, (value) => value.toMap()),
      'description': ?description,
      'diskContainer': pulumi.Input.mapInputValue<SnapshotImportDiskContainer, Map<String, dynamic>>(diskContainer, (value) => value.toMap()),
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'permanentRestore': ?permanentRestore,
      'region': ?region,
      'roleName': ?roleName,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'temporaryRestoreDays': ?temporaryRestoreDays,
    };
  }

  factory SnapshotImportArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotImportArgs(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotImportClientData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskContainer: pulumi.Input.fromValue(SnapshotImportDiskContainer.fromMap((map['diskContainer']! as Map).cast<String, dynamic>())),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permanentRestore: (() { final guardedValue = map['permanentRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      temporaryRestoreDays: (() { final guardedValue = map['temporaryRestoreDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
