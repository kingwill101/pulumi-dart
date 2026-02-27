// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_vault_backup_retention_policy/backup_vault_backup_retention_policy.dart';

/// The set of arguments for BackupVault.
class BackupVaultNetappArgs {
  /// Region in which backup is stored.
  final pulumi.Input<String>? backupRegion;

  /// Backup retention policy defining the retention of the backups.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultBackupRetentionPolicy>? backupRetentionPolicy;

  /// Type of the backup vault to be created. Default is IN_REGION.
  /// Possible values are: `BACKUP_VAULT_TYPE_UNSPECIFIED`, `IN_REGION`, `CROSS_REGION`.
  final pulumi.Input<String>? backupVaultType;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location (region) of the backup vault.
  final pulumi.Input<String> location;

  /// The resource name of the backup vault. Needs to be unique per location.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  BackupVaultNetappArgs({
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
      map['backupRetentionPolicy'] = pulumi.Input.mapOptionalInputValue<
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

  factory BackupVaultNetappArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultNetappArgs(
      backupRegion: pulumi.Input.asOptionalInput<String>(map['backupRegion']),
      backupRetentionPolicy:
          pulumi.Input.asOptionalInput<BackupVaultBackupRetentionPolicy>(
              map['backupRetentionPolicy']),
      backupVaultType:
          pulumi.Input.asOptionalInput<String>(map['backupVaultType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
