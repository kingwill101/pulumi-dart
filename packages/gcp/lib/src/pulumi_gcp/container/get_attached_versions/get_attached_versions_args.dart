// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAttachedVersions.
class GetAttachedVersionsArgs {
  /// The location to list versions for.
  final pulumi.Input<String> location;

  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String> project;

  GetAttachedVersionsArgs({
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory GetAttachedVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedVersionsArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
