// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_snapshot_args_doc}
class SnapshotArgs {
  /// The description of the snapshot.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> volumeId;

  /// Creates a new [SnapshotArgs].
  /// [description] The description of the snapshot.
  /// [location] Optional.
  /// [name] The name of the snapshot.
  /// [project] Optional.
  /// [volumeId] Required.
  SnapshotArgs({
    String? description,
    String? location,
    String? name,
    String? project,
    required String volumeId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'volumeId': volumeId,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}

