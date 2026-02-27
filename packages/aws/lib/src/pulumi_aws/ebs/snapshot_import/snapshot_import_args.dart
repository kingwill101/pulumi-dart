// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../snapshot_import_client_data/snapshot_import_client_data.dart';
import '../snapshot_import_disk_container/snapshot_import_disk_container.dart';

/// The set of arguments for SnapshotImport.
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

  SnapshotImportArgs({
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
    final map = <String, dynamic>{};
    final clientDataValue = clientData;
    if (clientDataValue != null) {
      map['clientData'] = pulumi.Input.mapOptionalInputValue<
          SnapshotImportClientData,
          Map<String, dynamic>>(clientDataValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['diskContainer'] = pulumi.Input.mapInputValue<
        SnapshotImportDiskContainer,
        Map<String, dynamic>>(diskContainer, (value) => value.toMap());
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final permanentRestoreValue = permanentRestore;
    if (permanentRestoreValue != null) {
      map['permanentRestore'] = permanentRestoreValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleNameValue = roleName;
    if (roleNameValue != null) {
      map['roleName'] = roleNameValue;
    }
    final storageTierValue = storageTier;
    if (storageTierValue != null) {
      map['storageTier'] = storageTierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final temporaryRestoreDaysValue = temporaryRestoreDays;
    if (temporaryRestoreDaysValue != null) {
      map['temporaryRestoreDays'] = temporaryRestoreDaysValue;
    }
    return map;
  }

  factory SnapshotImportArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotImportArgs(
      clientData: pulumi.Input.asOptionalInput<SnapshotImportClientData>(
          map['clientData']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskContainer: pulumi.Input.asInput<SnapshotImportDiskContainer>(
          map['diskContainer']),
      encrypted: pulumi.Input.asOptionalInput<bool>(map['encrypted']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      permanentRestore:
          pulumi.Input.asOptionalInput<bool>(map['permanentRestore']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleName: pulumi.Input.asOptionalInput<String>(map['roleName']),
      storageTier: pulumi.Input.asOptionalInput<String>(map['storageTier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      temporaryRestoreDays:
          pulumi.Input.asOptionalInput<int>(map['temporaryRestoreDays']),
    );
  }
}
