// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_npm_packages_npm_package.dart';

/// Result data returned by getNpmPackages.
class GetNpmPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// A list of all retrieved Artifact Registry Npm packages. Structure is defined below.
  final List<GetNpmPackagesNpmPackage> npmPackages;
  final String? project;
  final String repositoryId;

  /// Creates a new [GetNpmPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [npmPackages] A list of all retrieved Artifact Registry Npm packages. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetNpmPackagesResult({
    required this.id,
    required this.location,
    required this.npmPackages,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    map['npmPackages'] =
        pulumi.Input.encodeList<GetNpmPackagesNpmPackage, Map<String, dynamic>>(
            npmPackages, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetNpmPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesResult(
      id: map['id'] as String,
      location: map['location'] as String,
      npmPackages: pulumi.Input.decodeList<GetNpmPackagesNpmPackage>(
          map['npmPackages'],
          (value) => GetNpmPackagesNpmPackage.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
