// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_encryption_config.dart';

/// {@template pulumi_backupdisasterrecovery_backup_vault_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_backup_vault_backup_vault_args_doc}
class BackupVaultArgs {
  /// Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// Default value is `WITHIN_ORGANIZATION`.
  /// Possible values are: `ACCESS_RESTRICTION_UNSPECIFIED`, `WITHIN_PROJECT`, `WITHIN_ORGANIZATION`, `UNRESTRICTED`, `WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA`.
  final pulumi.Input<String>? accessRestriction;

  /// Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  final pulumi.Input<bool>? allowMissing;

  /// Optional. User annotations. See https://google.aip.dev/128#annotations
  /// Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  final pulumi.Input<String> backupMinimumEnforcedRetentionDuration;

  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  final pulumi.Input<String>? backupRetentionInheritance;

  /// Required. ID of the requesting object.
  final pulumi.Input<String> backupVaultId;

  /// Optional. The description of the BackupVault instance (2048 characters or less).
  final pulumi.Input<String>? description;

  /// Optional. Time after which the BackupVault resource is locked.
  final pulumi.Input<String>? effectiveTime;

  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  final pulumi.Input<BackupVaultEncryptionConfig>? encryptionConfig;

  /// (Optional, Deprecated)
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  ///
  /// > **Warning:** `force_delete` is deprecated and will be removed in a future major release. Use `ignore_inactive_datasources` instead.
  final pulumi.Input<bool>? forceDelete;

  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  final pulumi.Input<bool>? forceUpdate;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  final pulumi.Input<bool>? ignoreBackupPlanReferences;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  final pulumi.Input<bool>? ignoreInactiveDatasources;

  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The GCP location for the backup vault.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackupVaultArgs].
  /// [accessRestriction] Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// [allowMissing] Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  /// [annotations] Optional. User annotations. See https://google.aip.dev/128#annotations
  /// [backupMinimumEnforcedRetentionDuration] Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  /// [backupRetentionInheritance] How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// [backupVaultId] Required. ID of the requesting object.
  /// [description] Optional. The description of the BackupVault instance (2048 characters or less).
  /// [effectiveTime] Optional. Time after which the BackupVault resource is locked.
  /// [encryptionConfig] Encryption configuration for the backup vault.
  /// [forceDelete] (Optional, Deprecated)
  /// [forceUpdate] If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// [ignoreBackupPlanReferences] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [ignoreInactiveDatasources] If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] The GCP location for the backup vault.
  /// [project] The ID of the project in which the resource belongs.
  BackupVaultArgs({
    String? accessRestriction,
    bool? allowMissing,
    Map<String, String>? annotations,
    required String backupMinimumEnforcedRetentionDuration,
    String? backupRetentionInheritance,
    required String backupVaultId,
    String? description,
    String? effectiveTime,
    BackupVaultEncryptionConfig? encryptionConfig,
    bool? forceDelete,
    bool? forceUpdate,
    bool? ignoreBackupPlanReferences,
    bool? ignoreInactiveDatasources,
    Map<String, String>? labels,
    required String location,
    String? project,
  }) : accessRestriction = pulumi.Input.asOptionalInput<String>(
         accessRestriction,
       ),
       allowMissing = pulumi.Input.asOptionalInput<bool>(allowMissing),
       annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       backupMinimumEnforcedRetentionDuration = pulumi.Input.asInput<String>(
         backupMinimumEnforcedRetentionDuration,
       ),
       backupRetentionInheritance = pulumi.Input.asOptionalInput<String>(
         backupRetentionInheritance,
       ),
       backupVaultId = pulumi.Input.asInput<String>(backupVaultId),
       description = pulumi.Input.asOptionalInput<String>(description),
       effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
       encryptionConfig =
           pulumi.Input.asOptionalInput<BackupVaultEncryptionConfig>(
             encryptionConfig,
           ),
       forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
       forceUpdate = pulumi.Input.asOptionalInput<bool>(forceUpdate),
       ignoreBackupPlanReferences = pulumi.Input.asOptionalInput<bool>(
         ignoreBackupPlanReferences,
       ),
       ignoreInactiveDatasources = pulumi.Input.asOptionalInput<bool>(
         ignoreInactiveDatasources,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRestriction': ?accessRestriction,
      'allowMissing': ?allowMissing,
      'annotations': ?annotations,
      'backupMinimumEnforcedRetentionDuration':
          backupMinimumEnforcedRetentionDuration,
      'backupRetentionInheritance': ?backupRetentionInheritance,
      'backupVaultId': backupVaultId,
      'description': ?description,
      'effectiveTime': ?effectiveTime,
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BackupVaultEncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'forceDelete': ?forceDelete,
      'forceUpdate': ?forceUpdate,
      'ignoreBackupPlanReferences': ?ignoreBackupPlanReferences,
      'ignoreInactiveDatasources': ?ignoreInactiveDatasources,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      accessRestriction: map['accessRestriction'] == null
          ? null
          : map['accessRestriction'] as String,
      allowMissing: map['allowMissing'] == null
          ? null
          : map['allowMissing'] as bool,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      backupMinimumEnforcedRetentionDuration:
          map['backupMinimumEnforcedRetentionDuration'] as String,
      backupRetentionInheritance: map['backupRetentionInheritance'] == null
          ? null
          : map['backupRetentionInheritance'] as String,
      backupVaultId: map['backupVaultId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      effectiveTime: map['effectiveTime'] == null
          ? null
          : map['effectiveTime'] as String,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : BackupVaultEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      forceDelete: map['forceDelete'] == null
          ? null
          : map['forceDelete'] as bool,
      forceUpdate: map['forceUpdate'] == null
          ? null
          : map['forceUpdate'] as bool,
      ignoreBackupPlanReferences: map['ignoreBackupPlanReferences'] == null
          ? null
          : map['ignoreBackupPlanReferences'] as bool,
      ignoreInactiveDatasources: map['ignoreInactiveDatasources'] == null
          ? null
          : map['ignoreInactiveDatasources'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
