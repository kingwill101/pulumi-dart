// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_backup_file_v1beta1_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_backup_file_v1beta1_args_doc}
class BackupFileV1beta1Args {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> backupId;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// Immutable. KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  final pulumi.Input<String>? sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final pulumi.Input<String>? sourceInstance;

  /// Creates a new [BackupFileV1beta1Args].
  /// [backupId] Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [kmsKeyName] Immutable. KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [project] Optional.
  /// [sourceFileShare] Name of the file share in the source Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  BackupFileV1beta1Args({
    required String backupId,
    String? description,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? sourceFileShare,
    String? sourceInstance,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceFileShare = pulumi.Input.asOptionalInput<String>(sourceFileShare),
      sourceInstance = pulumi.Input.asOptionalInput<String>(sourceInstance);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'description': ?description,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
    };
  }

  factory BackupFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BackupFileV1beta1Args(
      backupId: map['backupId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceFileShare: map['sourceFileShare'] == null ? null : map['sourceFileShare'] as String,
      sourceInstance: map['sourceInstance'] == null ? null : map['sourceInstance'] as String,
    );
  }
}

