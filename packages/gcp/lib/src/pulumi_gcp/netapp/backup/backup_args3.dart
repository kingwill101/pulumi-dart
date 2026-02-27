// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Backup.
class BackupArgs3 {
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location of the backup.
  final Input<String> location;

  /// The resource name of the backup. Needs to be unique per location.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  final Input<String>? sourceSnapshot;

  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  final Input<String>? sourceVolume;

  /// Name of the backup vault to store the backup in.
  final Input<String> vaultName;

  BackupArgs3({
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.sourceSnapshot,
    this.sourceVolume,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceVolumeValue = sourceVolume;
    if (sourceVolumeValue != null) {
      map['sourceVolume'] = sourceVolumeValue;
    }
    map['vaultName'] = vaultName;
    return map;
  }

  factory BackupArgs3.fromMap(Map<String, dynamic> map) {
    return BackupArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceSnapshot: Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceVolume: Input.asOptionalInput<String>(map['sourceVolume']),
      vaultName: Input.asInput<String>(map['vaultName']),
    );
  }
}
