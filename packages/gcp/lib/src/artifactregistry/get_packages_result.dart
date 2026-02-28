// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_packages_package.dart';

/// Result data returned by getPackages.
class GetPackagesResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// A list of all retrieved Artifact Registry packages. Structure is defined below.
  final List<GetPackagesPackage> packages;
  final String? project;
  final String repositoryId;

  /// Creates a new [GetPackagesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [packages] A list of all retrieved Artifact Registry packages. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetPackagesResult({
    this.filter,
    required this.id,
    required this.location,
    required this.packages,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['location'] = location;
    map['packages'] =
        pulumi.Input.encodeList<GetPackagesPackage, Map<String, dynamic>>(
            packages, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetPackagesResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      packages: pulumi.Input.decodeList<GetPackagesPackage>(
          map['packages'],
          (value) => GetPackagesPackage.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
