// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_version.dart';

/// Result data returned by getVersions.
class GetVersionsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String packageName;
  final String? project;
  final String repositoryId;

  /// A list of all retrieved Artifact Registry versions. Structure is defined below.
  final List<GetVersionsVersion> versions;
  final String? view;

  /// Creates a new [GetVersionsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [packageName] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [versions] A list of all retrieved Artifact Registry versions. Structure is defined below.
  /// [view] Optional.
  GetVersionsResult({
    this.filter,
    required this.id,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.versions,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['location'] = location;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['versions'] =
        pulumi.Input.encodeList<GetVersionsVersion, Map<String, dynamic>>(
            versions, (value) => value.toMap());
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetVersionsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      versions: pulumi.Input.decodeList<GetVersionsVersion>(
          map['versions'],
          (value) => GetVersionsVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
