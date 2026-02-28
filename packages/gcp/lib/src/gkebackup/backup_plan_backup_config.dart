// ignore_for_file: unused_element, unnecessary_cast

import 'backup_plan_backup_config_encryption_key.dart';
import 'backup_plan_backup_config_selected_applications.dart';
import 'backup_plan_backup_config_selected_namespace_labels.dart';
import 'backup_plan_backup_config_selected_namespaces.dart';

class BackupPlanBackupConfig {
  /// If True, include all namespaced resources.
  final bool? allNamespaces;

  /// This defines a customer managed encryption key that will be used to encrypt the "config"
  /// portion (the Kubernetes resources) of Backups created via this plan.
  /// Structure is documented below.
  final BackupPlanBackupConfigEncryptionKey? encryptionKey;

  /// This flag specifies whether Kubernetes Secret resources should be included
  /// when they fall into the scope of Backups.
  final bool? includeSecrets;

  /// This flag specifies whether volume data should be backed up when PVCs are
  /// included in the scope of a Backup.
  final bool? includeVolumeData;

  /// This flag specifies whether Backups will not fail when
  /// Backup for GKE detects Kubernetes configuration that is
  /// non-standard or requires additional setup to restore.
  final bool? permissiveMode;

  /// A list of namespaced Kubernetes Resources.
  /// Structure is documented below.
  final BackupPlanBackupConfigSelectedApplications? selectedApplications;

  /// If set, include just the resources in the listed namespace Labels.
  /// Structure is documented below.
  final BackupPlanBackupConfigSelectedNamespaceLabels? selectedNamespaceLabels;

  /// If set, include just the resources in the listed namespaces.
  /// Structure is documented below.
  final BackupPlanBackupConfigSelectedNamespaces? selectedNamespaces;

  /// Creates a new [BackupPlanBackupConfig].
  /// [allNamespaces] If True, include all namespaced resources.
  /// [encryptionKey] This defines a customer managed encryption key that will be used to encrypt the "config"
  /// [includeSecrets] This flag specifies whether Kubernetes Secret resources should be included
  /// [includeVolumeData] This flag specifies whether volume data should be backed up when PVCs are
  /// [permissiveMode] This flag specifies whether Backups will not fail when
  /// [selectedApplications] A list of namespaced Kubernetes Resources.
  /// [selectedNamespaceLabels] If set, include just the resources in the listed namespace Labels.
  /// [selectedNamespaces] If set, include just the resources in the listed namespaces.
  BackupPlanBackupConfig({
    this.allNamespaces,
    this.encryptionKey,
    this.includeSecrets,
    this.includeVolumeData,
    this.permissiveMode,
    this.selectedApplications,
    this.selectedNamespaceLabels,
    this.selectedNamespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allNamespacesValue = allNamespaces;
    if (allNamespacesValue != null) {
      map['allNamespaces'] = allNamespacesValue;
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue.toMap();
    }
    final includeSecretsValue = includeSecrets;
    if (includeSecretsValue != null) {
      map['includeSecrets'] = includeSecretsValue;
    }
    final includeVolumeDataValue = includeVolumeData;
    if (includeVolumeDataValue != null) {
      map['includeVolumeData'] = includeVolumeDataValue;
    }
    final permissiveModeValue = permissiveMode;
    if (permissiveModeValue != null) {
      map['permissiveMode'] = permissiveModeValue;
    }
    final selectedApplicationsValue = selectedApplications;
    if (selectedApplicationsValue != null) {
      map['selectedApplications'] = selectedApplicationsValue.toMap();
    }
    final selectedNamespaceLabelsValue = selectedNamespaceLabels;
    if (selectedNamespaceLabelsValue != null) {
      map['selectedNamespaceLabels'] = selectedNamespaceLabelsValue.toMap();
    }
    final selectedNamespacesValue = selectedNamespaces;
    if (selectedNamespacesValue != null) {
      map['selectedNamespaces'] = selectedNamespacesValue.toMap();
    }
    return map;
  }

  factory BackupPlanBackupConfig.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfig(
      allNamespaces:
          map['allNamespaces'] == null ? null : map['allNamespaces'] as bool,
      encryptionKey: map['encryptionKey'] == null
          ? null
          : BackupPlanBackupConfigEncryptionKey.fromMap(
              (map['encryptionKey'] as Map).cast<String, dynamic>()),
      includeSecrets:
          map['includeSecrets'] == null ? null : map['includeSecrets'] as bool,
      includeVolumeData: map['includeVolumeData'] == null
          ? null
          : map['includeVolumeData'] as bool,
      permissiveMode:
          map['permissiveMode'] == null ? null : map['permissiveMode'] as bool,
      selectedApplications: map['selectedApplications'] == null
          ? null
          : BackupPlanBackupConfigSelectedApplications.fromMap(
              (map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaceLabels: map['selectedNamespaceLabels'] == null
          ? null
          : BackupPlanBackupConfigSelectedNamespaceLabels.fromMap(
              (map['selectedNamespaceLabels'] as Map).cast<String, dynamic>()),
      selectedNamespaces: map['selectedNamespaces'] == null
          ? null
          : BackupPlanBackupConfigSelectedNamespaces.fromMap(
              (map['selectedNamespaces'] as Map).cast<String, dynamic>()),
    );
  }
}
