// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAttachedVersions.
class GetAttachedVersionsArgs {
  /// The location to list versions for.
  final Input<String> location;

  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final Input<String> project;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
