// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_backup_channel_backup_channel_args_doc}
/// The set of arguments for BackupChannel.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_backup_channel_backup_channel_args_doc}
class BackupChannelArgs {
  /// User specified descriptive string for this BackupChannel.
  final pulumi.Input<String>? description;

  /// The project where Backups are allowed to be stored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  final pulumi.Input<String> destinationProject;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The region of the Backup Channel.
  final pulumi.Input<String> location;

  /// The full name of the BackupChannel Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackupChannelArgs].
  /// [description] User specified descriptive string for this BackupChannel.
  /// [destinationProject] The project where Backups are allowed to be stored.
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Channel.
  /// [name] The full name of the BackupChannel Resource.
  /// [project] The ID of the project in which the resource belongs.
  BackupChannelArgs({
    String? description,
    required String destinationProject,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        destinationProject = pulumi.Input.asInput<String>(destinationProject),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destinationProject'] = destinationProject;
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
    return map;
  }

  factory BackupChannelArgs.fromMap(Map<String, dynamic> map) {
    return BackupChannelArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      destinationProject: map['destinationProject'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
