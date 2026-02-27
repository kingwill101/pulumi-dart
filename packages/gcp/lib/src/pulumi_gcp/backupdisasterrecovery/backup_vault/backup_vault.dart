import 'package:pulumi/pulumi.dart';
import '../backup_vault_encryption_config/backup_vault_encryption_config.dart';
import 'backup_vault_args.dart';

/// Container to store and organize immutable and indelible backups.
///
///
///
/// ## Example Usage
///
/// ### Backup Dr Backup Vault Simple
///
///
///
/// ### Backup Dr Backup Vault Cmek
///
///
///
///
/// ## Import
///
/// BackupVault can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupVaults/{{backup_vault_id}}`
///
/// * `{{project}}/{{location}}/{{backup_vault_id}}`
///
/// * `{{location}}/{{backup_vault_id}}`
///
/// When using the `pulumi import` command, BackupVault can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default projects/{{project}}/locations/{{location}}/backupVaults/{{backup_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default {{project}}/{{location}}/{{backup_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupVault:BackupVault default {{location}}/{{backup_vault_id}}
/// ```
class BackupVault extends CustomResource {
  /// Access restriction for the backup vault. Default value is `WITHIN_ORGANIZATION` if not provided during creation.
  /// Default value is `WITHIN_ORGANIZATION`.
  /// Possible values are: `ACCESS_RESTRICTION_UNSPECIFIED`, `WITHIN_PROJECT`, `WITHIN_ORGANIZATION`, `UNRESTRICTED`, `WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA`.
  late final Output<String?> accessRestriction;

  /// Allow idempotent deletion of backup vault. The request will still succeed in case the backup vault does not exist.
  late final Output<bool?> allowMissing;

  /// Optional. User annotations. See https://google.aip.dev/128#annotations
  /// Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. The number of backups in this backup vault.
  late final Output<String> backupCount;

  /// Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  late final Output<String> backupMinimumEnforcedRetentionDuration;

  /// How a backup's enforced retention end time is inherited. Default value is `INHERIT_VAULT_RETENTION` if not provided during creation.
  /// Possible values are: `BACKUP_RETENTION_INHERITANCE_UNSPECIFIED`, `INHERIT_VAULT_RETENTION`, `MATCH_BACKUP_EXPIRE_TIME`.
  late final Output<String?> backupRetentionInheritance;

  /// Required. ID of the requesting object.
  late final Output<String> backupVaultId;

  /// Output only. The time when the instance was created.
  late final Output<String> createTime;

  /// Output only. Set to true when there are no backups nested under this resource.
  late final Output<bool> deletable;

  /// Optional. The description of the BackupVault instance (2048 characters or less).
  late final Output<String?> description;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Time after which the BackupVault resource is locked.
  late final Output<String?> effectiveTime;

  /// Encryption configuration for the backup vault.
  /// Structure is documented below.
  late final Output<BackupVaultEncryptionConfig?> encryptionConfig;

  /// Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  late final Output<String> etag;

  /// (Optional, Deprecated)
  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  ///
  /// > **Warning:** `force_delete` is deprecated and will be removed in a future major release. Use `ignore_inactive_datasources` instead.
  late final Output<bool?> forceDelete;

  /// If set, allow update to extend the minimum enforced retention for backup vault. This overrides
  /// the restriction against conflicting retention periods. This conflict may occur when the
  /// expiration schedule defined by the associated backup plan is shorter than the minimum
  /// retention set by the backup vault.
  late final Output<bool?> forceUpdate;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance that is being referenced by an active backup plan.
  late final Output<bool?> ignoreBackupPlanReferences;

  /// If set, the following restrictions against deletion of the backup vault instance can be overridden:
  /// * deletion of a backup vault instance containing no backups, but still containing empty datasources.
  late final Output<bool?> ignoreInactiveDatasources;

  /// Optional. Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The GCP location for the backup vault.
  late final Output<String> location;

  /// Output only. Identifier. The resource name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Service account used by the BackupVault Service for this BackupVault.  The user should grant this account permissions in their workload project to enable the service to run backups and restores there.
  late final Output<String> serviceAccount;

  /// Output only. The BackupVault resource instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// ERROR
  late final Output<String> state;

  /// Output only. Total size of the storage used by all backup resources.
  late final Output<String> totalStoredBytes;

  /// Output only. Output only Immutable after resource creation until resource deletion.
  late final Output<String> uid;

  /// Output only. The time when the instance was updated.
  late final Output<String> updateTime;

  BackupVault(
    String name, {
    BackupVaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupVault:BackupVault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRestriction = registerOutput<String?>('accessRestriction');
    this.allowMissing = registerOutput<bool?>('allowMissing');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.backupCount = registerOutput<String>('backupCount');
    this.backupMinimumEnforcedRetentionDuration =
        registerOutput<String>('backupMinimumEnforcedRetentionDuration');
    this.backupRetentionInheritance =
        registerOutput<String?>('backupRetentionInheritance');
    this.backupVaultId = registerOutput<String>('backupVaultId');
    this.createTime = registerOutput<String>('createTime');
    this.deletable = registerOutput<bool>('deletable');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.encryptionConfig =
        registerOutput<BackupVaultEncryptionConfig?>('encryptionConfig');
    this.etag = registerOutput<String>('etag');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.ignoreBackupPlanReferences =
        registerOutput<bool?>('ignoreBackupPlanReferences');
    this.ignoreInactiveDatasources =
        registerOutput<bool?>('ignoreInactiveDatasources');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.totalStoredBytes = registerOutput<String>('totalStoredBytes');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
