import 'package:pulumi/pulumi.dart';
import 'backup_args2.dart';
import 'encryption_config_response2.dart';
import 'encryption_info_response2.dart';
import 'quantity_based_expiry_response2.dart';

/// Creates a new Backup in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Backup2 extends CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final Output<Map<String, String>> annotations;

  /// Required. ID of the requesting object.
  late final Output<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  late final Output<String> clusterName;

  /// The system-generated UID of the cluster which was used to create this resource.
  late final Output<String> clusterUid;

  /// Create time stamp
  late final Output<String> createTime;

  /// The database engine major version of the cluster this backup was created from. Any restored cluster created from this backup will have the same database version.
  late final Output<String> databaseVersion;

  /// Delete time stamp
  late final Output<String> deleteTime;

  /// User-provided description of the backup.
  late final Output<String> description;

  /// User-settable and human-readable display name for the Backup.
  late final Output<String> displayName;

  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  late final Output<EncryptionConfigResponse2> encryptionConfig;

  /// The encryption information for the backup.
  late final Output<EncryptionInfoResponse2> encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String> etag;

  /// The QuantityBasedExpiry of the backup, specified by the backup's retention policy. Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  late final Output<QuantityBasedExpiryResponse2> expiryQuantity;

  /// The time at which after the backup is eligible to be garbage collected. It is the duration specified by the backup's retention policy, added to the backup's create_time.
  late final Output<String> expiryTime;

  /// Labels as key value pairs
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id} where the cluster and backup ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the backup resource name is the name of the parent resource: * projects/{project}/locations/{region}
  late final Output<String> name;
  late final Output<String> project;

  /// Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The size of the backup in bytes.
  late final Output<String> sizeBytes;

  /// The current state of the backup.
  late final Output<String> state;

  /// The backup type, which suggests the trigger for the backup.
  late final Output<String> type;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final Output<String> uid;

  /// Update time stamp
  late final Output<String> updateTime;

  Backup2(
    String name, {
    BackupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1alpha:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.backupId = Output.createUnknown<String>();
    this.clusterName = Output.createUnknown<String>();
    this.clusterUid = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseVersion = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<EncryptionConfigResponse2>();
    this.encryptionInfo = Output.createUnknown<EncryptionInfoResponse2>();
    this.etag = Output.createUnknown<String>();
    this.expiryQuantity = Output.createUnknown<QuantityBasedExpiryResponse2>();
    this.expiryTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.requestId = Output.createUnknown<String?>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.sizeBytes = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
