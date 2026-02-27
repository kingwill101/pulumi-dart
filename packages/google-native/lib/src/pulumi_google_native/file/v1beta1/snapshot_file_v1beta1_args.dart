// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Snapshot.
class SnapshotFileV1beta1Args {
  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> instanceId;

  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> snapshotId;

  SnapshotFileV1beta1Args({
    this.description,
    required this.instanceId,
    this.labels,
    this.location,
    this.project,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
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
    map['snapshotId'] = snapshotId;
    return map;
  }

  factory SnapshotFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return SnapshotFileV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
    );
  }
}
