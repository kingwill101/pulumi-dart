// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_npm_package_get_npm_package_args_doc}
/// Arguments for getNpmPackage.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_npm_package_get_npm_package_args_doc}
class GetNpmPackageArgs {
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;

  /// The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  final pulumi.Input<String> packageName;

  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final pulumi.Input<String>? project;

  /// The ID of the repository containing the NPM package.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetNpmPackageArgs].
  /// [location] The location of the Artifact Registry repository.
  /// [packageName] The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  /// [project] The ID of the project that owns the repository. If not provided, the provider-level project is used.
  /// [repositoryId] The ID of the repository containing the NPM package.
  GetNpmPackageArgs({
    required String location,
    required String packageName,
    String? project,
    required String repositoryId,
  }) : location = pulumi.Input.asInput<String>(location),
       packageName = pulumi.Input.asInput<String>(packageName),
       project = pulumi.Input.asOptionalInput<String>(project),
       repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetNpmPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetNpmPackageArgs(
      location: map['location'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
