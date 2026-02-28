// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_snapshot_file_v1beta1_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_snapshot_file_v1beta1_args_doc}
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

  /// Creates a new [SnapshotFileV1beta1Args].
  /// [description] A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [instanceId] Required.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [project] Optional.
  /// [snapshotId] Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  SnapshotFileV1beta1Args({
    String? description,
    required String instanceId,
    Map<String, String>? labels,
    String? location,
    String? project,
    required String snapshotId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        snapshotId = pulumi.Input.asInput<String>(snapshotId);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceId: map['instanceId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      snapshotId: map['snapshotId'] as String,
    );
  }
}
