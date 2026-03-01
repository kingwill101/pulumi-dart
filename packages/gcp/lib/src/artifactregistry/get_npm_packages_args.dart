// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_npm_packages_get_npm_packages_args_doc}
/// Arguments for getNpmPackages.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_npm_packages_get_npm_packages_args_doc}
class GetNpmPackagesArgs {
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetNpmPackagesArgs].
  /// [location] The location of the Artifact Registry repository.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  GetNpmPackagesArgs({
    required String location,
    String? project,
    required String repositoryId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetNpmPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}

