// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNpmPackage.
class GetNpmPackageArgs {
  /// The location of the Artifact Registry repository.
  final Input<String> location;

  /// The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  final Input<String> packageName;

  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final Input<String>? project;

  /// The ID of the repository containing the NPM package.
  final Input<String> repositoryId;

  GetNpmPackageArgs({
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetNpmPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetNpmPackageArgs(
      location: Input.asInput<String>(map['location']),
      packageName: Input.asInput<String>(map['packageName']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
