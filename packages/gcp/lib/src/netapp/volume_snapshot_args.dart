// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_volume_snapshot_volume_snapshot_args_doc}
/// The set of arguments for VolumeSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_snapshot_volume_snapshot_args_doc}
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

  /// Creates a new [VolumeSnapshotArgs].
  /// [description] Description for the snapshot.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  /// [name] The name of the snapshot.
  /// [project] The ID of the project in which the resource belongs.
  /// [volumeName] The name of the volume to create the snapshot in.
  VolumeSnapshotArgs({
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    required String volumeName,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        volumeName = pulumi.Input.asInput<String>(volumeName);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}
