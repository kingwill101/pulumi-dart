// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_filestore_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_filestore_snapshot_snapshot_args_doc}
class SnapshotArgs {
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

  /// Creates a new [SnapshotArgs].
  /// [description] A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [instance] The resource name of the filestore instance.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  /// [name] The resource name of the snapshot. The name must be unique within the specified instance.
  /// [project] The ID of the project in which the resource belongs.
  SnapshotArgs({
    String? description,
    required String instance,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       instance = pulumi.Input.asInput<String>(instance),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instance': instance,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      instance: map['instance'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
