// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPackage.
class GetPackageArgs {
  /// The location of the artifact registry.
  final Input<String> location;

  /// The name of the package.
  final Input<String> name;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

  GetPackageArgs({
    required this.location,
    required this.name,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPackageArgs(
      location: Input.asInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
