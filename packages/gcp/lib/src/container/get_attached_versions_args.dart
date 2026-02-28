// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_attached_versions_get_attached_versions_args_doc}
/// Arguments for getAttachedVersions.
/// {@endtemplate}
/// {@macro pulumi_container_get_attached_versions_get_attached_versions_args_doc}
class GetAttachedVersionsArgs {
  /// The location to list versions for.
  final pulumi.Input<String> location;

  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String> project;

  /// Creates a new [GetAttachedVersionsArgs].
  /// [location] The location to list versions for.
  /// [project] ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  GetAttachedVersionsArgs({
    required String location,
    required String project,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory GetAttachedVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedVersionsArgs(
      location: map['location'] as String,
      project: map['project'] as String,
    );
  }
}
