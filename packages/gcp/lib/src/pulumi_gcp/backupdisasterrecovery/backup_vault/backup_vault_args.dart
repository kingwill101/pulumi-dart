// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_vault_encryption_config/backup_vault_encryption_config.dart';

/// The set of arguments for BackupVault.
class BackupVaultArgs {
  /// Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// Default value is `WITHIN_ORGANIZATION`.
  /// Possible values are: `ACCESS_RESTRICTION_UNSPECIFIED`, `WITHIN_PROJECT`, `WITHIN_ORGANIZATION`, `UNRESTRICTED`, `WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA`.
  final Input<String>? accessRestriction;

  /// Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  final Input<bool>? allowMissing;

  /// Optional. User annotations. See https://google.aip.dev/128#annotations
  /// Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  final Input<String> backupMinimumEnforcedRetentionDuration;

  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  final Input<String>? backupRetentionInheritance;

  /// Required. ID of the requesting object.
  final Input<String> backupVaultId;

  /// Optional. The description of the BackupVault instance (2048 characters or less).
  final Input<String>? description;

  /// Optional. Time after which the BackupVault resource is locked.
  final Input<String>? effectiveTime;

  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  final Input<BackupVaultEncryptionConfig>? encryptionConfig;

  /// (Optional, Deprecated)
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  ///
  /// > **Warning:** `force_delete` is deprecated and will be removed in a future major release. Use `ignore_inactive_datasources` instead.
  final Input<bool>? forceDelete;

  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  final Input<bool>? forceUpdate;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  final Input<bool>? ignoreBackupPlanReferences;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  final Input<bool>? ignoreInactiveDatasources;

  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The GCP location for the backup vault.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  BackupVaultArgs({
    this.accessRestriction,
    this.allowMissing,
    this.annotations,
    required this.backupMinimumEnforcedRetentionDuration,
    this.backupRetentionInheritance,
    required this.backupVaultId,
    this.description,
    this.effectiveTime,
    this.encryptionConfig,
    this.forceDelete,
    this.forceUpdate,
    this.ignoreBackupPlanReferences,
    this.ignoreInactiveDatasources,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessRestrictionValue = accessRestriction;
    if (accessRestrictionValue != null) {
      map['accessRestriction'] = accessRestrictionValue;
    }
    final allowMissingValue = allowMissing;
    if (allowMissingValue != null) {
      map['allowMissing'] = allowMissingValue;
    }
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['backupMinimumEnforcedRetentionDuration'] =
        backupMinimumEnforcedRetentionDuration;
    final backupRetentionInheritanceValue = backupRetentionInheritance;
    if (backupRetentionInheritanceValue != null) {
      map['backupRetentionInheritance'] = backupRetentionInheritanceValue;
    }
    map['backupVaultId'] = backupVaultId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final effectiveTimeValue = effectiveTime;
    if (effectiveTimeValue != null) {
      map['effectiveTime'] = effectiveTimeValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              BackupVaultEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final forceUpdateValue = forceUpdate;
    if (forceUpdateValue != null) {
      map['forceUpdate'] = forceUpdateValue;
    }
    final ignoreBackupPlanReferencesValue = ignoreBackupPlanReferences;
    if (ignoreBackupPlanReferencesValue != null) {
      map['ignoreBackupPlanReferences'] = ignoreBackupPlanReferencesValue;
    }
    final ignoreInactiveDatasourcesValue = ignoreInactiveDatasources;
    if (ignoreInactiveDatasourcesValue != null) {
      map['ignoreInactiveDatasources'] = ignoreInactiveDatasourcesValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      accessRestriction:
          Input.asOptionalInput<String>(map['accessRestriction']),
      allowMissing: Input.asOptionalInput<bool>(map['allowMissing']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      backupMinimumEnforcedRetentionDuration:
          Input.asInput<String>(map['backupMinimumEnforcedRetentionDuration']),
      backupRetentionInheritance:
          Input.asOptionalInput<String>(map['backupRetentionInheritance']),
      backupVaultId: Input.asInput<String>(map['backupVaultId']),
      description: Input.asOptionalInput<String>(map['description']),
      effectiveTime: Input.asOptionalInput<String>(map['effectiveTime']),
      encryptionConfig: Input.asOptionalInput<BackupVaultEncryptionConfig>(
          map['encryptionConfig']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      forceUpdate: Input.asOptionalInput<bool>(map['forceUpdate']),
      ignoreBackupPlanReferences:
          Input.asOptionalInput<bool>(map['ignoreBackupPlanReferences']),
      ignoreInactiveDatasources:
          Input.asOptionalInput<bool>(map['ignoreInactiveDatasources']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
