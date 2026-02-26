// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_response2.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';

/// BackupConfig defines the configuration of Backups created via this BackupPlan.
class BackupConfigResponse {
  /// If True, include all namespaced resources
  final bool allNamespaces;

  /// Optional. This defines a customer managed encryption key that will be used to encrypt the "config" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.
  final EncryptionKeyResponse2 encryptionKey;

  /// Optional. This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False
  final bool includeSecrets;

  /// Optional. This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False
  final bool includeVolumeData;

  /// If set, include just the resources referenced by the listed ProtectedApplications.
  final NamespacedNamesResponse selectedApplications;

  /// If set, include just the resources in the listed namespaces.
  final NamespacesResponse selectedNamespaces;

  BackupConfigResponse({
    required this.allNamespaces,
    required this.encryptionKey,
    required this.includeSecrets,
    required this.includeVolumeData,
    required this.selectedApplications,
    required this.selectedNamespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allNamespaces'] = allNamespaces;
    map['encryptionKey'] = encryptionKey.toMap();
    map['includeSecrets'] = includeSecrets;
    map['includeVolumeData'] = includeVolumeData;
    map['selectedApplications'] = selectedApplications.toMap();
    map['selectedNamespaces'] = selectedNamespaces.toMap();
    return map;
  }

  factory BackupConfigResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigResponse(
      allNamespaces: map['allNamespaces'] as bool,
      encryptionKey: EncryptionKeyResponse2.fromMap(
          (map['encryptionKey'] as Map).cast<String, dynamic>()),
      includeSecrets: map['includeSecrets'] as bool,
      includeVolumeData: map['includeVolumeData'] as bool,
      selectedApplications: NamespacedNamesResponse.fromMap(
          (map['selectedApplications'] as Map).cast<String, dynamic>()),
      selectedNamespaces: NamespacesResponse.fromMap(
          (map['selectedNamespaces'] as Map).cast<String, dynamic>()),
    );
  }
}
