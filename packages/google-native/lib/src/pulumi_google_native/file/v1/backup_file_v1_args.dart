// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Backup.
class BackupFileV1Args {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  final pulumi.Input<String> backupId;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;

  /// Immutable. KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKey;

  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Name of the file share in the source Filestore instance that the backup is created from.
  final pulumi.Input<String>? sourceFileShare;

  /// The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final pulumi.Input<String>? sourceInstance;

  BackupFileV1Args({
    required this.backupId,
    this.description,
    this.kmsKey,
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
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
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

  factory BackupFileV1Args.fromMap(Map<String, dynamic> map) {
    return BackupFileV1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceFileShare:
          pulumi.Input.asOptionalInput<String>(map['sourceFileShare']),
      sourceInstance:
          pulumi.Input.asOptionalInput<String>(map['sourceInstance']),
    );
  }
}
