// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Backup.
class BackupArgs6 {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final Input<String> backupId;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final Input<String>? description;

  /// Immutable. KMS key name used for data encryption.
  final Input<String>? kmsKeyName;

  /// Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Name of the file share in the source Filestore instance that the backup is created from.
  final Input<String>? sourceFileShare;

  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final Input<String>? sourceInstance;

  BackupArgs6({
    required this.backupId,
    this.description,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.project,
    this.sourceFileShare,
    this.sourceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
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
    final sourceFileShareValue = sourceFileShare;
    if (sourceFileShareValue != null) {
      map['sourceFileShare'] = sourceFileShareValue;
    }
    final sourceInstanceValue = sourceInstance;
    if (sourceInstanceValue != null) {
      map['sourceInstance'] = sourceInstanceValue;
    }
    return map;
  }

  factory BackupArgs6.fromMap(Map<String, dynamic> map) {
    return BackupArgs6(
      backupId: Input.asInput<String>(map['backupId']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceFileShare: Input.asOptionalInput<String>(map['sourceFileShare']),
      sourceInstance: Input.asOptionalInput<String>(map['sourceInstance']),
    );
  }
}
