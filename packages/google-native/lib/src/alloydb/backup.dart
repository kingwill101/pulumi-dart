import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'encryption_config_response.dart';
import 'encryption_info_response.dart';
import 'quantity_based_expiry_response.dart';

/// Creates a new Backup in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Backup extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final pulumi.Output<Map<String, String>> annotations;

  /// Required. ID of the requesting object.
  late final pulumi.Output<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  late final pulumi.Output<String> clusterName;

  /// The system-generated UID of the cluster which was used to create this resource.
  late final pulumi.Output<String> clusterUid;

  /// Create time stamp
  late final pulumi.Output<String> createTime;

  /// The database engine major version of the cluster this backup was created from. Any restored cluster created from this backup will have the same database version.
  late final pulumi.Output<String> databaseVersion;

  /// Delete time stamp
  late final pulumi.Output<String> deleteTime;

  /// User-provided description of the backup.
  late final pulumi.Output<String> description;

  /// User-settable and human-readable display name for the Backup.
  late final pulumi.Output<String> displayName;

  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  late final pulumi.Output<EncryptionConfigResponse> encryptionConfig;

  /// The encryption information for the backup.
  late final pulumi.Output<EncryptionInfoResponse> encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// The QuantityBasedExpiry of the backup, specified by the backup's retention policy. Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  late final pulumi.Output<QuantityBasedExpiryResponse> expiryQuantity;

  /// The time at which after the backup is eligible to be garbage collected. It is the duration specified by the backup's retention policy, added to the backup's create_time.
  late final pulumi.Output<String> expiryTime;

  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id} where the cluster and backup ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the backup resource name is the name of the parent resource: * projects/{project}/locations/{region}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The size of the backup in bytes.
  late final pulumi.Output<String> sizeBytes;

  /// The current state of the backup.
  late final pulumi.Output<String> state;

  /// The backup type, which suggests the trigger for the backup.
  late final pulumi.Output<String> type;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final pulumi.Output<String> uid;

  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_alloydb_v1_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.backupId = registerOutput<String>('backupId');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUid = registerOutput<String>('clusterUid');
    this.createTime = registerOutput<String>('createTime');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionConfig =
        registerOutput<EncryptionConfigResponse>('encryptionConfig');
    this.encryptionInfo =
        registerOutput<EncryptionInfoResponse>('encryptionInfo');
    this.etag = registerOutput<String>('etag');
    this.expiryQuantity =
        registerOutput<QuantityBasedExpiryResponse>('expiryQuantity');
    this.expiryTime = registerOutput<String>('expiryTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
