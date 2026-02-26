// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPackages.
class GetPackagesArgs {
  /// An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`annotations`" pulumi-lang-dotnet="`Annotations`" pulumi-lang-go="`annotations`" pulumi-lang-python="`annotations`" pulumi-lang-yaml="`annotations`" pulumi-lang-java="`annotations`">`annotations`</span>. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages/list#query-parameters).
  final Input<String>? filter;

  /// The location of the Artifact Registry repository.
  final Input<String> location;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

  GetPackagesArgs({
    this.filter,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetPackagesArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
