import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_vault_backup_retention_policy/backup_vault_backup_retention_policy.dart';
import 'backup_vault_netapp_args.dart';

/// A backup vault is the location where backups are stored. You can only create one backup vault per region.
/// A vault can hold multiple backups for multiple volumes in that region.
///
///
/// To get more information about BackupVault, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupVaults)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups)
///
/// ## Example Usage
///
/// ### Netapp Backup Vault
///
///
///
///
/// ## Import
///
/// BackupVault can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupVaults/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackupVault can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backupVault:BackupVault default projects/{{project}}/locations/{{location}}/backupVaults/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupVault:BackupVault default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupVault:BackupVault default {{location}}/{{name}}
/// ```
class BackupVaultNetapp extends pulumi.CustomResource {
  /// Region in which backup is stored.
  late final pulumi.Output<String?> backupRegion;

  /// Backup retention policy defining the retention of the backups.
  /// Structure is documented below.
  late final pulumi.Output<BackupVaultBackupRetentionPolicy?>
      backupRetentionPolicy;

  /// Type of the backup vault to be created. Default is IN_REGION.
  /// Possible values are: `BACKUP_VAULT_TYPE_UNSPECIFIED`, `IN_REGION`, `CROSS_REGION`.
  late final pulumi.Output<String> backupVaultType;

  /// Create time of the backup vault. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the Backup vault created in backup region.
  late final pulumi.Output<String> destinationBackupVault;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Location (region) of the backup vault.
  late final pulumi.Output<String> location;

  /// The resource name of the backup vault. Needs to be unique per location.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Name of the Backup vault created in source region.
  late final pulumi.Output<String> sourceBackupVault;

  /// Region in which the backup vault is created.
  late final pulumi.Output<String> sourceRegion;

  /// The state of the Backup Vault.
  late final pulumi.Output<String> state;

  BackupVaultNetapp(
    String name, {
    BackupVaultNetappArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backupVault:BackupVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRegion = registerOutput<String?>('backupRegion');
    this.backupRetentionPolicy =
        registerOutput<BackupVaultBackupRetentionPolicy?>(
            'backupRetentionPolicy');
    this.backupVaultType = registerOutput<String>('backupVaultType');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.destinationBackupVault =
        registerOutput<String>('destinationBackupVault');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceBackupVault = registerOutput<String>('sourceBackupVault');
    this.sourceRegion = registerOutput<String>('sourceRegion');
    this.state = registerOutput<String>('state');
  }
}
