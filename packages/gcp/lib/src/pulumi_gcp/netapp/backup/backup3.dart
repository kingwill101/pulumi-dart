import 'package:pulumi/pulumi.dart';
import 'backup_args3.dart';

/// NetApp Volumes supports volume backups, which are copies of your volumes
/// stored independently from the volume. Backups are stored in backup vaults,
/// which are containers for backups. If a volume is lost or deleted, you can
/// use backups to restore your data to a new volume.
///
/// When you create the first backup of a volume, all of the volume's used
/// data is sent to the backup vault. Subsequent backups of the same volume
/// only include data that has changed from the previous backup. This allows
/// for fast incremental-forever backups and reduces the required capacity
/// inside the backup vault.
///
/// You can create manual and scheduled backups. Manual backups can be taken
/// from a volume or from an existing volume snapshot. Scheduled backups
/// require a backup policy.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupVaults.backups)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups)
///
/// ## Example Usage
///
/// ### Netapp Backup
///
///
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupVaults/{{vault_name}}/backups/{{name}}`
///
/// * `{{project}}/{{location}}/{{vault_name}}/{{name}}`
///
/// * `{{location}}/{{vault_name}}/{{name}}`
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backup:Backup default projects/{{project}}/locations/{{location}}/backupVaults/{{vault_name}}/backups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backup:Backup default {{project}}/{{location}}/{{vault_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backup:Backup default {{location}}/{{vault_name}}/{{name}}
/// ```
class Backup3 extends CustomResource {
  /// Region in which backup is stored.
  late final Output<String> backupRegion;

  /// Type of backup, manually created or created by a backup policy. Possible Values : [TYPE_UNSPECIFIED, MANUAL, SCHEDULED]
  late final Output<String> backupType;

  /// Backups of a volume build incrementally on top of each other. They form a "backup chain".
  /// Total size of all backups in a chain in bytes = baseline backup size + sum(incremental backup size)
  late final Output<String> chainStorageBytes;

  /// Create time of the backup. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location of the backup.
  late final Output<String> location;

  /// The resource name of the backup. Needs to be unique per location.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  late final Output<String?> sourceSnapshot;

  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  late final Output<String?> sourceVolume;

  /// The state of the Backup Vault. Possible Values : [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING, ERROR, UPDATING]
  late final Output<String> state;

  /// Name of the backup vault to store the backup in.
  late final Output<String> vaultName;

  /// Region of the volume from which the backup was created.
  late final Output<String> volumeRegion;

  /// Size of the file system when the backup was created. When creating a new volume from the backup, the volume capacity will have to be at least as big.
  late final Output<String> volumeUsageBytes;

  Backup3(
    String name, {
    BackupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backup:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupRegion = registerOutput<String>('backupRegion');
    this.backupType = registerOutput<String>('backupType');
    this.chainStorageBytes = registerOutput<String>('chainStorageBytes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    this.sourceVolume = registerOutput<String?>('sourceVolume');
    this.state = registerOutput<String>('state');
    this.vaultName = registerOutput<String>('vaultName');
    this.volumeRegion = registerOutput<String>('volumeRegion');
    this.volumeUsageBytes = registerOutput<String>('volumeUsageBytes');
  }
}
