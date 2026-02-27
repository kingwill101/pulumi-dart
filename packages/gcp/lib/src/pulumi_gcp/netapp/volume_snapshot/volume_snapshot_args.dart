// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VolumeSnapshot.
class VolumeSnapshotArgs {
  /// Description for the snapshot.
  final pulumi.Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  final pulumi.Input<String> location;

  /// The name of the snapshot.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the volume to create the snapshot in.
  final pulumi.Input<String> volumeName;

  VolumeSnapshotArgs({
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.volumeName,
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
    map['volumeName'] = volumeName;
    return map;
  }

  factory VolumeSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      volumeName: pulumi.Input.asInput<String>(map['volumeName']),
    );
  }
}
