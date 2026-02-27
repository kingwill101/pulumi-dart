// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RestoreChannel.
class RestoreChannelArgs {
  /// User specified descriptive string for this RestoreChannel.
  final pulumi.Input<String>? description;

  /// The project where Backups will be restored.
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

  /// The region of the Restore Channel.
  final pulumi.Input<String> location;

  /// The full name of the RestoreChannel Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  RestoreChannelArgs({
    this.description,
    required this.destinationProject,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

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

  factory RestoreChannelArgs.fromMap(Map<String, dynamic> map) {
    return RestoreChannelArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationProject:
          pulumi.Input.asInput<String>(map['destinationProject']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
