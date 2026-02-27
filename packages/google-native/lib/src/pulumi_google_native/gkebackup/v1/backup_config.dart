// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_gkebackup_v1.dart';
import 'namespaced_names.dart';
import 'namespaces.dart';

/// BackupConfig defines the configuration of Backups created via this BackupPlan.
class BackupConfig {
  /// If True, include all namespaced resources
  final bool? allNamespaces;

  /// Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  final EncryptionKeyGkebackupV1? encryptionKey;

  /// Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  final bool? includeSecrets;

  /// Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  final bool? includeVolumeData;

  /// If set, include just the resources referenced by the listed ProtectedApplications.
  final NamespacedNames? selectedApplications;

  /// If set, include just the resources in the listed namespaces.
  final Namespaces? selectedNamespaces;

  BackupConfig({
    this.allNamespaces,
    this.encryptionKey,
    this.includeSecrets,
    this.includeVolumeData,
    this.selectedApplications,
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
    final selectedApplicationsValue = selectedApplications;
    if (selectedApplicationsValue != null) {
      map['selectedApplications'] = selectedApplicationsValue.toMap();
    }
    final selectedNamespacesValue = selectedNamespaces;
    if (selectedNamespacesValue != null) {
      map['selectedNamespaces'] = selectedNamespacesValue.toMap();
    }
    return map;
  }

  factory BackupConfig.fromMap(Map<String, dynamic> map) {
    return BackupConfig(
      allNamespaces:
          map['allNamespaces'] == null ? null : map['allNamespaces'] as bool,
      encryptionKey: map['encryptionKey'] == null
          ? null
          : EncryptionKeyGkebackupV1.fromMap(
              (map['encryptionKey'] as Map).cast<String, dynamic>()),
      includeSecrets:
          map['includeSecrets'] == null ? null : map['includeSecrets'] as bool,
      includeVolumeData: map['includeVolumeData'] == null
          ? null
          : map['includeVolumeData'] as bool,
      selectedApplications: map['selectedApplications'] == null
          ? null
          : NamespacedNames.fromMap(
              (map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaces: map['selectedNamespaces'] == null
          ? null
          : Namespaces.fromMap(
              (map['selectedNamespaces'] as Map).cast<String, dynamic>()),
    );
  }
}
