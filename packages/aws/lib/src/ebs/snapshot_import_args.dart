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
  SnapshotImportArgs({
    SnapshotImportClientData? clientData,
    String? description,
    required SnapshotImportDiskContainer diskContainer,
    bool? encrypted,
    String? kmsKeyId,
    bool? permanentRestore,
    String? region,
    String? roleName,
    String? storageTier,
    Map<String, String>? tags,
    int? temporaryRestoreDays,
  }) : clientData = pulumi.Input.asOptionalInput<SnapshotImportClientData>(
         clientData,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       diskContainer = pulumi.Input.asInput<SnapshotImportDiskContainer>(
         diskContainer,
       ),
       encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       permanentRestore = pulumi.Input.asOptionalInput<bool>(permanentRestore),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleName = pulumi.Input.asOptionalInput<String>(roleName),
       storageTier = pulumi.Input.asOptionalInput<String>(storageTier),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       temporaryRestoreDays = pulumi.Input.asOptionalInput<int>(
         temporaryRestoreDays,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData':
          ?pulumi.Input.mapOptionalInputValue<
            SnapshotImportClientData,
            Map<String, dynamic>
          >(clientData, (value) => value.toMap()),
      'description': ?description,
      'diskContainer':
          pulumi.Input.mapInputValue<
            SnapshotImportDiskContainer,
            Map<String, dynamic>
          >(diskContainer, (value) => value.toMap()),
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
      clientData: map['clientData'] == null
          ? null
          : SnapshotImportClientData.fromMap(
              (map['clientData'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      diskContainer: SnapshotImportDiskContainer.fromMap(
        (map['diskContainer'] as Map).cast<String, dynamic>(),
      ),
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      permanentRestore: map['permanentRestore'] == null
          ? null
          : map['permanentRestore'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      storageTier: map['storageTier'] == null
          ? null
          : map['storageTier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      temporaryRestoreDays: map['temporaryRestoreDays'] == null
          ? null
          : map['temporaryRestoreDays'] as int,
    );
  }
}
