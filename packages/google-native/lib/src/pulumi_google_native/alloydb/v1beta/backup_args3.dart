// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_type3.dart';
import 'encryption_config3.dart';

/// The set of arguments for Backup.
class BackupArgs3 {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Input<Map<String, String>>? annotations;

  /// Required. ID of the requesting object.
  final Input<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  final Input<String> clusterName;

  /// User-provided description of the backup.
  final Input<String>? description;

  /// User-settable and human-readable display name for the Backup.
  final Input<String>? displayName;

  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final Input<EncryptionConfig3>? encryptionConfig;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final Input<String>? etag;

  /// Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The backup type, which suggests the trigger for the backup.
  final Input<BackupType3>? type;

  BackupArgs3({
    this.annotations,
    required this.backupId,
    required this.clusterName,
    this.description,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['backupId'] = backupId;
    map['clusterName'] = clusterName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig3, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<BackupType3, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory BackupArgs3.fromMap(Map<String, dynamic> map) {
    return BackupArgs3(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      backupId: Input.asInput<String>(map['backupId']),
      clusterName: Input.asInput<String>(map['clusterName']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig3>(map['encryptionConfig']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      type: Input.asOptionalInput<BackupType3>(map['type']),
    );
  }
}
