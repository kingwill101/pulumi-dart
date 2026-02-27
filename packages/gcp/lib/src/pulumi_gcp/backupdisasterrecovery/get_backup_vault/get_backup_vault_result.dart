// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backup_vault_encryption_config/get_backup_vault_encryption_config.dart';

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  final String accessRestriction;
  final bool allowMissing;
  final Map<String, String> annotations;
  final String backupCount;
  final String backupMinimumEnforcedRetentionDuration;
  final String backupRetentionInheritance;
  final String backupVaultId;
  final String createTime;
  final bool deletable;
  final String description;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String effectiveTime;
  final List<GetBackupVaultEncryptionConfig> encryptionConfigs;
  final String etag;
  final bool forceDelete;
  final bool forceUpdate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool ignoreBackupPlanReferences;
  final bool ignoreInactiveDatasources;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String serviceAccount;
  final String state;
  final String totalStoredBytes;
  final String uid;
  final String updateTime;

  GetBackupVaultResult({
    required this.accessRestriction,
    required this.allowMissing,
    required this.annotations,
    required this.backupCount,
    required this.backupMinimumEnforcedRetentionDuration,
    required this.backupRetentionInheritance,
    required this.backupVaultId,
    required this.createTime,
    required this.deletable,
    required this.description,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.effectiveTime,
    required this.encryptionConfigs,
    required this.etag,
    required this.forceDelete,
    required this.forceUpdate,
    required this.id,
    required this.ignoreBackupPlanReferences,
    required this.ignoreInactiveDatasources,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.serviceAccount,
    required this.state,
    required this.totalStoredBytes,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessRestriction'] = accessRestriction;
    map['allowMissing'] = allowMissing;
    map['annotations'] = annotations;
    map['backupCount'] = backupCount;
    map['backupMinimumEnforcedRetentionDuration'] =
        backupMinimumEnforcedRetentionDuration;
    map['backupRetentionInheritance'] = backupRetentionInheritance;
    map['backupVaultId'] = backupVaultId;
    map['createTime'] = createTime;
    map['deletable'] = deletable;
    map['description'] = description;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveTime'] = effectiveTime;
    map['encryptionConfigs'] = pulumi.Input.encodeList<
        GetBackupVaultEncryptionConfig,
        Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap());
    map['etag'] = etag;
    map['forceDelete'] = forceDelete;
    map['forceUpdate'] = forceUpdate;
    map['id'] = id;
    map['ignoreBackupPlanReferences'] = ignoreBackupPlanReferences;
    map['ignoreInactiveDatasources'] = ignoreInactiveDatasources;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['serviceAccount'] = serviceAccount;
    map['state'] = state;
    map['totalStoredBytes'] = totalStoredBytes;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      accessRestriction: map['accessRestriction'] as String,
      allowMissing: map['allowMissing'] as bool,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      backupCount: map['backupCount'] as String,
      backupMinimumEnforcedRetentionDuration:
          map['backupMinimumEnforcedRetentionDuration'] as String,
      backupRetentionInheritance: map['backupRetentionInheritance'] as String,
      backupVaultId: map['backupVaultId'] as String,
      createTime: map['createTime'] as String,
      deletable: map['deletable'] as bool,
      description: map['description'] as String,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveTime: map['effectiveTime'] as String,
      encryptionConfigs:
          pulumi.Input.decodeList<GetBackupVaultEncryptionConfig>(
              map['encryptionConfigs'],
              (value) => GetBackupVaultEncryptionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      forceDelete: map['forceDelete'] as bool,
      forceUpdate: map['forceUpdate'] as bool,
      id: map['id'] as String,
      ignoreBackupPlanReferences: map['ignoreBackupPlanReferences'] as bool,
      ignoreInactiveDatasources: map['ignoreInactiveDatasources'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      totalStoredBytes: map['totalStoredBytes'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
