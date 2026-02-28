// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_backup_retention_policy.dart';

/// {@template pulumi_netapp_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
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

  /// Creates a new [BackupVaultArgs].
  /// [backupRegion] Region in which backup is stored.
  /// [backupRetentionPolicy] Backup retention policy defining the retention of the backups.
  /// [backupVaultType] Type of the backup vault to be created. Default is IN_REGION.
  /// [description] An optional description of this resource.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location (region) of the backup vault.
  /// [name] The resource name of the backup vault. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  BackupVaultArgs({
    String? backupRegion,
    BackupVaultBackupRetentionPolicy? backupRetentionPolicy,
    String? backupVaultType,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  })  : backupRegion = pulumi.Input.asOptionalInput<String>(backupRegion),
        backupRetentionPolicy =
            pulumi.Input.asOptionalInput<BackupVaultBackupRetentionPolicy>(
                backupRetentionPolicy),
        backupVaultType = pulumi.Input.asOptionalInput<String>(backupVaultType),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      backupRegion:
          map['backupRegion'] == null ? null : map['backupRegion'] as String,
      backupRetentionPolicy: map['backupRetentionPolicy'] == null
          ? null
          : BackupVaultBackupRetentionPolicy.fromMap(
              (map['backupRetentionPolicy'] as Map).cast<String, dynamic>()),
      backupVaultType: map['backupVaultType'] == null
          ? null
          : map['backupVaultType'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
