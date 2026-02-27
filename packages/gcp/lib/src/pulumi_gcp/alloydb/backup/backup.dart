import 'package:pulumi/pulumi.dart';
import '../backup_encryption_config/backup_encryption_config.dart';
import '../backup_encryption_info/backup_encryption_info.dart';
import '../backup_expiry_quantity/backup_expiry_quantity.dart';
import 'backup_args.dart';

/// An AlloyDB Backup.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.backups/create)
/// * How-to Guides
/// * [AlloyDB](https://cloud.google.com/alloydb/docs/)
///
/// ## Example Usage
///
/// ### Alloydb Backup Basic
///
///
///
/// ### Alloydb Backup Full
///
///
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backups/{{backup_id}}`
///
/// * `{{project}}/{{location}}/{{backup_id}}`
///
/// * `{{location}}/{{backup_id}}`
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default projects/{{project}}/locations/{{location}}/backups/{{backup_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default {{project}}/{{location}}/{{backup_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/backup:Backup default {{location}}/{{backup_id}}
/// ```
class Backup extends CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The ID of the alloydb backup.
  late final Output<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  late final Output<String> clusterName;

  /// Output only. The system-generated UID of the cluster which was used to create this resource.
  late final Output<String> clusterUid;

  /// Output only. Create time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Output only. Delete time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> deleteTime;

  /// User-provided description of the backup.
  late final Output<String?> description;

  /// User-settable and human-readable display name for the Backup.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  late final Output<BackupEncryptionConfig?> encryptionConfig;

  /// EncryptionInfo describes the encryption information of a cluster or a backup.
  /// Structure is documented below.
  late final Output<List<BackupEncryptionInfo>> encryptionInfos;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String> etag;

  /// Output only. The QuantityBasedExpiry of the backup, specified by the backup's retention policy.
  /// Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  /// Structure is documented below.
  late final Output<List<BackupExpiryQuantity>> expiryQuantities;

  /// Output only. The time at which after the backup is eligible to be garbage collected.
  /// It is the duration specified by the backup's retention policy, added to the backup's createTime.
  late final Output<String> expiryTime;

  /// User-defined labels for the alloydb backup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the alloydb backup should reside.
  late final Output<String> location;

  /// Output only. The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backupId}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final Output<bool> reconciling;

  /// Output only. The size of the backup in bytes.
  late final Output<String> sizeBytes;

  /// Output only. The current state of the backup.
  late final Output<String> state;

  /// The backup type, which suggests the trigger for the backup.
  /// Possible values are: `TYPE_UNSPECIFIED`, `ON_DEMAND`, `AUTOMATED`, `CONTINUOUS`.
  late final Output<String> type;

  /// Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final Output<String> uid;

  /// Output only. Update time stamp. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  Backup(
    String name, {
    BackupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/backup:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.backupId = registerOutput<String>('backupId');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUid = registerOutput<String>('clusterUid');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfig =
        registerOutput<BackupEncryptionConfig?>('encryptionConfig');
    this.encryptionInfos =
        registerOutput<List<BackupEncryptionInfo>>('encryptionInfos');
    this.etag = registerOutput<String>('etag');
    this.expiryQuantities =
        registerOutput<List<BackupExpiryQuantity>>('expiryQuantities');
    this.expiryTime = registerOutput<String>('expiryTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
