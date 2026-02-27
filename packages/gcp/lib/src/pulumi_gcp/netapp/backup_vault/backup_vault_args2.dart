// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_vault_backup_retention_policy/backup_vault_backup_retention_policy.dart';

/// The set of arguments for BackupVault.
class BackupVaultArgs2 {
  /// Region in which backup is stored.
  final Input<String>? backupRegion;

  /// Backup retention policy defining the retention of the backups.
  /// Structure is documented below.
  final Input<BackupVaultBackupRetentionPolicy>? backupRetentionPolicy;

  /// Type of the backup vault to be created. Default is IN_REGION.
  /// Possible values are: `BACKUP_VAULT_TYPE_UNSPECIFIED`, `IN_REGION`, `CROSS_REGION`.
  final Input<String>? backupVaultType;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location (region) of the backup vault.
  final Input<String> location;

  /// The resource name of the backup vault. Needs to be unique per location.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  BackupVaultArgs2({
    this.backupRegion,
    this.backupRetentionPolicy,
    this.backupVaultType,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupRegionValue = backupRegion;
    if (backupRegionValue != null) {
      map['backupRegion'] = backupRegionValue;
    }
    final backupRetentionPolicyValue = backupRetentionPolicy;
    if (backupRetentionPolicyValue != null) {
      map['backupRetentionPolicy'] = Input.mapOptionalInputValue<
              BackupVaultBackupRetentionPolicy, Map<String, dynamic>>(
          backupRetentionPolicyValue, (value) => value.toMap());
    }
    final backupVaultTypeValue = backupVaultType;
    if (backupVaultTypeValue != null) {
      map['backupVaultType'] = backupVaultTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackupVaultArgs2.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs2(
      backupRegion: Input.asOptionalInput<String>(map['backupRegion']),
      backupRetentionPolicy:
          Input.asOptionalInput<BackupVaultBackupRetentionPolicy>(
              map['backupRetentionPolicy']),
      backupVaultType: Input.asOptionalInput<String>(map['backupVaultType']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
