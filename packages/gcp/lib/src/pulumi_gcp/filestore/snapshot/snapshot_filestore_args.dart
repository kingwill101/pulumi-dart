// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Snapshot.
class SnapshotFilestoreArgs {
  /// A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;

  /// The resource name of the filestore instance.
  final pulumi.Input<String> instance;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final pulumi.Input<String> location;

  /// The resource name of the snapshot. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  SnapshotFilestoreArgs({
    this.description,
    required this.instance,
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
    map['instance'] = instance;
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

  factory SnapshotFilestoreArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotFilestoreArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
