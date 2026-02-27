// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersions.
class GetVersionsArgs {
  /// An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are `name` and `version`. Further information can be found in the [REST API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.versions/list#query-parameters).
  final pulumi.Input<String>? filter;

  /// The location of the artifact registry.
  final pulumi.Input<String> location;

  /// The name of the package.
  final pulumi.Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  final pulumi.Input<String>? view;

  GetVersionsArgs({
    this.filter,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['location'] = location;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionsArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      location: pulumi.Input.asInput<String>(map['location']),
      packageName: pulumi.Input.asInput<String>(map['packageName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
