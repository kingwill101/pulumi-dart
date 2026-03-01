// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_backup_args_doc}
class BackupArgs {
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location of the backup.
  final pulumi.Input<String> location;

  /// The resource name of the backup. Needs to be unique per location.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  final pulumi.Input<String>? sourceSnapshot;

  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  final pulumi.Input<String>? sourceVolume;

  /// Name of the backup vault to store the backup in.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupArgs].
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location of the backup.
  /// [name] The resource name of the backup. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceSnapshot] If specified, backup will be created from the given snapshot. If not specified,
  /// [sourceVolume] ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  /// [vaultName] Name of the backup vault to store the backup in.
  BackupArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    String? sourceSnapshot,
    String? sourceVolume,
    required String vaultName,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
       sourceVolume = pulumi.Input.asOptionalInput<String>(sourceVolume),
       vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'sourceSnapshot': ?sourceSnapshot,
      'sourceVolume': ?sourceVolume,
      'vaultName': vaultName,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
      sourceVolume: map['sourceVolume'] == null
          ? null
          : map['sourceVolume'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}
