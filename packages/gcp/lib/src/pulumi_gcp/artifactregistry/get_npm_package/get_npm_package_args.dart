// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNpmPackage.
class GetNpmPackageArgs {
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;

  /// The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  final pulumi.Input<String> packageName;

  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final pulumi.Input<String>? project;

  /// The ID of the repository containing the NPM package.
  final pulumi.Input<String> repositoryId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      packageName: pulumi.Input.asInput<String>(map['packageName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
