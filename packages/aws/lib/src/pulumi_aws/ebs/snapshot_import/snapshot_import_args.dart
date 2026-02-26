// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../snapshot_import_client_data/snapshot_import_client_data.dart';
import '../snapshot_import_disk_container/snapshot_import_disk_container.dart';

/// The set of arguments for SnapshotImport.
class SnapshotImportArgs {
  /// The client-specific data. Detailed below.
  final Input<SnapshotImportClientData>? clientData;

  /// The description string for the import snapshot task.
  final Input<String>? description;

  /// Information about the disk container. Detailed below.
  final Input<SnapshotImportDiskContainer> diskContainer;

  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  final Input<bool>? encrypted;

  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  final Input<String>? kmsKeyId;

  /// Indicates whether to permanently restore an archived snapshot.
  final Input<bool>? permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: <span pulumi-lang-nodejs="`vmimport`" pulumi-lang-dotnet="`Vmimport`" pulumi-lang-go="`vmimport`" pulumi-lang-python="`vmimport`" pulumi-lang-yaml="`vmimport`" pulumi-lang-java="`vmimport`">`vmimport`</span>
  final Input<String>? roleName;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final Input<String>? storageTier;

  /// A map of tags to assign to the snapshot.
  final Input<Map<String, String>>? tags;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  final Input<int>? temporaryRestoreDays;

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
      map['clientData'] = Input.mapOptionalInputValue<SnapshotImportClientData,
          Map<String, dynamic>>(clientDataValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['diskContainer'] =
        Input.mapInputValue<SnapshotImportDiskContainer, Map<String, dynamic>>(
            diskContainer, (value) => value.toMap());
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
      clientData:
          Input.asOptionalInput<SnapshotImportClientData>(map['clientData']),
      description: Input.asOptionalInput<String>(map['description']),
      diskContainer:
          Input.asInput<SnapshotImportDiskContainer>(map['diskContainer']),
      encrypted: Input.asOptionalInput<bool>(map['encrypted']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      permanentRestore: Input.asOptionalInput<bool>(map['permanentRestore']),
      region: Input.asOptionalInput<String>(map['region']),
      roleName: Input.asOptionalInput<String>(map['roleName']),
      storageTier: Input.asOptionalInput<String>(map['storageTier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      temporaryRestoreDays:
          Input.asOptionalInput<int>(map['temporaryRestoreDays']),
    );
  }
}
