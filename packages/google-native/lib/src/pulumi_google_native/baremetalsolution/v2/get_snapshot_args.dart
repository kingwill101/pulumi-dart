// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSnapshot.
class GetSnapshotArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> snapshotId;
  final Input<String> volumeId;

  GetSnapshotArgs({
    required this.location,
    this.project,
    required this.snapshotId,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshotId'] = snapshotId;
    map['volumeId'] = volumeId;
    return map;
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
      volumeId: Input.asInput<String>(map['volumeId']),
    );
  }
}
