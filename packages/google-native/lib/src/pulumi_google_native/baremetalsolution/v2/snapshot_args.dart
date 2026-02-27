// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Snapshot.
class SnapshotArgs {
  /// The description of the snapshot.
  final Input<String>? description;
  final Input<String>? location;

  /// The name of the snapshot.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> volumeId;

  SnapshotArgs({
    this.description,
    this.location,
    this.name,
    this.project,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['volumeId'] = volumeId;
    return map;
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      volumeId: Input.asInput<String>(map['volumeId']),
    );
  }
}
