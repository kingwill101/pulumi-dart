// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_type.dart';
import 'encryption_config.dart';

/// {@template pulumi_alloydb_v1_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_backup_args_doc}
class BackupArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> backupId;
  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  final pulumi.Input<String> clusterName;
  /// User-provided description of the backup.
  final pulumi.Input<String>? description;
  /// User-settable and human-readable display name for the Backup.
  final pulumi.Input<String>? displayName;
  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The backup type, which suggests the trigger for the backup.
  final pulumi.Input<BackupType>? type;

  /// Creates a new [BackupArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [backupId] Required. ID of the requesting object.
  /// [clusterName] The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  /// [description] User-provided description of the backup.
  /// [displayName] User-settable and human-readable display name for the Backup.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The backup type, which suggests the trigger for the backup.
  BackupArgs({
    Map<String, String>? annotations,
    required String backupId,
    required String clusterName,
    String? description,
    String? displayName,
    EncryptionConfig? encryptionConfig,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
    BackupType? type,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      backupId = pulumi.Input.asInput<String>(backupId),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(encryptionConfig),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asOptionalInput<BackupType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'backupId': backupId,
      'clusterName': clusterName,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<BackupType, String>(type, (value) => value.value),
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      backupId: map['backupId'] as String,
      clusterName: map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      encryptionConfig: map['encryptionConfig'] == null ? null : EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      type: map['type'] == null ? null : BackupType.fromValue(map['type'] as String),
    );
  }
}

